import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import axios from "axios";
import ProductList from "./ProductList";
import styles from "./SingleProduct.module.css";
import type { Product } from "../types/Product";
import FbSvg from "./FbSvg";
import LinkedinSvg from "./LinkedinSvg";
import XSvg from "./XSvg";
import RouteBar from "./RouteBar";

const SingleProduct: React.FC = () => {
  const { alias } = useParams<{ alias: string }>();

  // states dos protudos relacionados
  const [product, setProduct] = useState<Product | null>(null);
  const [related, setRelated] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);

  // Size e color sets
  const [selectedSize, setSelectedSize] = useState<string | null>(null);
  const [selectedColor, setSelectedColor] = useState<string | null>(null);

  // imagem indice
  const [selectedImg, setSelectedImg] = useState<number>(0);

  // State das quantidades dos prod
  const [quantity, setQuantity] = useState(1);

  // state do description/info
  const [activeTab, setActiveTab] = useState<"description" | "info">(
    "description"
  );

  // tamanhos utilizados
  const sizeMap: Record<string, string> = {
    Twin: "T",
    Queen: "Q",
    Large: "L",
    "Extra large": "XL",
    King: "K",
    Small: "S",
    Medium: "M",
  };

  // cores do banco de dados para as bolinhas
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

  // useefect para o fetch do axios dos dados do produto e tambem dos prod relacionado
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

  // funcaozinha para o desconto dos produtos
  const hasDiscount = product.descount > 0;
  const discountedPrice = hasDiscount
    ? (product.price * (1 - product.descount / 100)).toFixed(2)
    : product.price.toFixed(2);

  // funcaozinha para o tamanho e cor setados
  const sizes =
    Array.isArray(product.size) && product.size.length > 0
      ? product.size
      : [null];
  const colors =
    Array.isArray(product.color) && product.color.length > 0
      ? product.color
      : [null];

  // funcaozinha para subir/descer a quantidade dos produtos
  const handleQuantityChange = (delta: number) => {
    setQuantity((q) => Math.max(1, q + delta));
  };

  return (
    <>
      <RouteBar productname={product.name} />
      <div className={styles.singleproduct}>
        <div className={styles.prodtop}>
          <div className={styles.images}>
            {/* galeria dos produtos */}
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
              <span className={styles.price}>$ {discountedPrice}</span>
              {hasDiscount && (
                <span className={styles.priceOriginal}>
                  $ {product.price.toFixed(2)}
                </span>
              )}
            </div>

            {/* necessita refino */}
            <div className={styles.reviews}>
              <span>
                ⭐ {product.review} | ({product.customreviews ?? 0} reviews)
              </span>
            </div>

            <div className={styles.smalldescription}>
              {product.smalldescription}
            </div>

            <div className={styles.optionsRow}>
              <div className={styles.optionLabel}>Size:</div>
              <div className={styles.sizes}>
                {sizes.map((sz, i) => {
                  const value = sz
                    ? sizeMap[sz] || sz[0].toUpperCase()
                    : "Unique";
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
              <div className={styles.actionsRow}>
                <div className={styles.quantityBox}>
                  <a
                    href="javascript:void(0)"
                    onClick={() => handleQuantityChange(-1)}
                  >
                    -
                  </a>
                  <span>{quantity}</span>
                  <a
                    href="javascript:void(0)"
                    onClick={() => handleQuantityChange(1)}
                  >
                    +
                  </a>
                </div>
                <button className={styles.actionBtn}>Add To Cart</button>
                <button className={styles.actionBtn}>+ Compare</button>
              </div>
              <hr className={styles.divider} />

              <div className={styles.productDetails}>
                <div className={styles.proddetail}>
                  <span className={styles.detailLabel}>SKU</span>
                  <span className={styles.detailValue}>
                    {product.sku || "N/A"}
                  </span>
                </div>
                <div className={styles.proddetail}>
                  <span className={styles.detailLabel}>Category</span>
                  <span className={styles.detailValue}>
                    {product.category?.join(", ") || "N/A"}
                  </span>
                </div>
                <div className={styles.proddetail}>
                  <span className={styles.detailLabel}>Tags</span>
                  <span className={styles.detailValue}>
                    {product.tags?.join(", ") || "N/A"}
                  </span>
                </div>
                <div className={styles.proddetail}>
                  <span className={styles.detailLabel}>Share</span>
                  <span className={styles.detailValue}>
                    <a href="/" rel="noopener noreferrer">
                      <FbSvg />
                    </a>
                    <a href="/" target="_blank" rel="noopener noreferrer">
                      <LinkedinSvg />
                    </a>
                    <a href="/" target="_blank" rel="noopener noreferrer">
                      <XSvg />
                    </a>
                  </span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr className={styles.divider} />
        {/* tabs de description full e info adcional */}
        <div className={styles.tabs}>
          <div className={styles.tabHeaders}>
            <button
              className={activeTab === "description" ? styles.activeTab : ""}
              onClick={() => setActiveTab("description")}
            >
              Description
            </button>
            <button
              className={activeTab === "info" ? styles.activeTab : ""}
              onClick={() => setActiveTab("info")}
            >
              Additional Information
            </button>
          </div>
          <div className={styles.tabContent}>
            {activeTab === "description" && <div>{product.description}</div>}
            {activeTab === "info" && <div>{product.info}</div>}
          </div>
        </div>

        <div className={styles.related}>
          <h2>Related Products</h2>
          <ProductList products={related} />
        </div>
      </div>
    </>
  );
};

export default SingleProduct;
