import React from "react";
import styles from "./ProductCard.module.css";
import type { Product } from "../types/Product";

interface Props {
  product: Product;
}

const ProductCard: React.FC<Props> = ({ product }) => {
  // func para calcular o desocnto se houver
  const hasDiscount = product.descount > 0;
  const discountedPrice = hasDiscount
    ? (product.price * (1 - product.descount / 100)).toFixed(2)
    : product.price.toFixed(2);

  return (
    <div className={styles.card}>
      <div className={styles.badgeWrapper}>
        {hasDiscount && (
          <span className={styles.badgeDiscount}>-{product.descount}%</span>
        )}
        {!hasDiscount && product.new && (
          <span className={styles.badgeNew}>New!</span>
        )}
      </div>
      <img src={product.image} alt={product.name} className={styles.image} />
      <div className={styles.body}>
        <span className={styles.name}>{product.name}</span>
        <span className={styles.alias}>{product.alias}</span>
        <span className={styles.priceRow}>
          <span className={styles.price}>R$ {discountedPrice}</span>
          {hasDiscount && (
            <span className={styles.priceOriginal}>
              R$ {product.price.toFixed(2)}
            </span>
          )}
        </span>
      </div>
    </div>
  );
};

export default ProductCard;
