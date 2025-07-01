import React from "react";
import styles from "./ProductCard.module.css";
import type { Product } from "../types/Product";

interface Props {
  product: Product;
}

const ProductCard: React.FC<Props> = ({ product }) => (
  <div className={styles.card}>
    <img src={product.image} alt={product.name} className={styles.image} />
    <div className={styles.body}>
      <span className={styles.name}>{product.name}</span>
      <span className={styles.alias}>{product.alias}</span>
      <span className={styles.price}>
        R$ {product.price}
        {product.descount > 0 && (
          <span className={styles.discount}> -{product.descount}%</span>
        )}
      </span>
      {product.new && <span className={styles.badgeNew}>Novo!</span>}
    </div>
  </div>
);

export default ProductCard;
