import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import axios from "axios";
import ProductList from "./ProductList";
import styles from "./SingleProduct.module.css";
import type { Product } from "../types/Product";

const SingleProduct: React.FC = () => {
  const { alias } = useParams<{ alias: string }>();
  const [product, setProduct] = useState<Product | null>(null);
  const [related, setRelated] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);

  const [selectedSize, setSelectedSize] = useState<string | null>(null);
  const [selectedColor, setSelectedColor] = useState<string | null>(null);

  // imagem indice
  const [selectedImg, setSelectedImg] = useState<number>(0);

  const sizeMap: Record<string, string> = {
    Twin: "T",
    Queen: "Q",
    Large: "L",
    "Extra large": "XL",
    King: "K",
    Small: "S",
    Medium: "M",
  };

  const colorMap: Record<string, string> = {
    Beige: "#F5F5DC",
    Black: "#222",
    Brown: "#8B5C2A",
    Charcoal: "#36454F",
    Cream: "#FFFDD0",
    Gold: "#FFD700",
    Gray: "#BEBEBE",
    Navy: "#001F6D",
    Silver: "#C0C0C0",
    White: "#FFF",
  };

  useEffect(() => {
    setLoading(true);
    setProduct(null);
    setRelated([]);
    setSelectedImg(0);

    axios
      .get<Product>(`http://localhost:3000/product/${alias}`)
      .then((res) => {
        setProduct(res.data);

        // busca produtos relacionados, se houver categoria
        if (res.data.category && res.data.category[0]) {
          axios
            .get<{
              products: Product[];
            }>(
              `http://localhost:3000/product/category/${res.data.category[0].toLowerCase()}?count=4`
            )
            .then((r) => {
              const filtered = r.data.products.filter(
                (p) => p.id !== res.data.id
              );
              setRelated(filtered);
            });
        }
      })
      .finally(() => setLoading(false));
  }, [alias]);

  if (loading || !product) return <div>Carregando...</div>;

  const hasDiscount = product.descount > 0;
  const discountedPrice = hasDiscount
    ? (product.price * (1 - product.descount / 100)).toFixed(2)
    : product.price.toFixed(2);

  const sizes =
    Array.isArray(product.size) && product.size.length > 0
      ? product.size
      : [null];
  const colors =
    Array.isArray(product.color) && product.color.length > 0
      ? product.color
      : [null];

  return (
    <div className={styles.singleproduct}>
      <div className={styles.prodtop}>
        <div className={styles.images}>
          <div className={styles.gallery}>
            <img
              src={product.image?.[selectedImg] || ""}
              alt={product.name}
              className={styles.mainImg}
            />
            <div className={styles.thumbs}>
              {(product.image || []).map((img: string, i: number) => (
                <img
                  key={i}
                  src={img}
                  alt={product.name}
                  className={`${styles.thumb} ${selectedImg === i ? styles.active : ""}`}
                  onClick={() => setSelectedImg(i)}
                />
              ))}
            </div>
          </div>
        </div>
        <div className={styles.info}>
          <h1>{product.name}</h1>
          <div className={styles.priceRow}>
            <span className={styles.price}>R$ {discountedPrice}</span>
            {hasDiscount && (
              <span className={styles.priceOriginal}>
                R$ {product.price.toFixed(2)}
              </span>
            )}
          </div>
          <div className={styles.reviews}>
            <span>
              ⭐ {product.review} | ({product.customreviews ?? 0} reviews)
            </span>
          </div>

          <div className={styles.description}>{product.description}</div>

          <div className={styles.optionsRow}>
            <div className={styles.optionLabel}>Size:</div>
            <div className={styles.sizes}>
              {sizes.map((sz, i) => {
                const value = sz
                  ? sizeMap[sz] || sz[0].toUpperCase()
                  : "Unique";
                // compara o (siz) ou "Unique" para null
                const isSelected = selectedSize === (sz || "Unique");
                return (
                  <span
                    key={i}
                    className={`${styles.sizeTag} ${isSelected ? styles.selected : ""}`}
                    onClick={() => setSelectedSize(sz || "Unique")}
                    style={{ cursor: "pointer" }}
                  >
                    {value}
                  </span>
                );
              })}
            </div>
          </div>

          <div className={styles.optionsRow}>
            <div className={styles.optionLabel}>Color:</div>
            <div className={styles.colors}>
              {colors.map((col, i) => {
                const isSelected = selectedColor === (col || "Unique");
                return col ? (
                  <span
                    key={i}
                    className={`${styles.colorDot} ${isSelected ? styles.selected : ""}`}
                    title={col}
                    style={{
                      background: colorMap[col] || "#ccc",
                      cursor: "pointer",
                    }}
                    onClick={() => setSelectedColor(col)}
                  />
                ) : (
                  <span
                    key={i}
                    className={`${styles.sizeTag} ${isSelected ? styles.selected : ""}`}
                    onClick={() => setSelectedColor("Unique")}
                    style={{ cursor: "pointer" }}
                  >
                    Unique
                  </span>
                );
              })}
            </div>
          </div>
        </div>
      </div>
      <div className={styles.related}>
        <h2>Related Products</h2>
        <ProductList products={related} />
      </div>
    </div>
  );
};

export default SingleProduct;
