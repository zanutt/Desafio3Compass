import React, { useState } from "react";
import styles from "./ProductCard.module.css";
import type { Product } from "../types/Product";
import { Link } from "react-router-dom";
import ShareSvg from "./ShareSvg";
import CompareSvg from "./CompareSvg";
import LikeSvg from "./LikeSvg";

interface Props {
  product: Product;
}

const ProductCard: React.FC<Props> = ({ product }) => {
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
          <span className={styles.price}>$ {discountedPrice}</span>
          {hasDiscount && (
            <span className={styles.priceOriginal}>
              $ {product.price.toFixed(2)}
            </span>
          )}
        </span>
      </div>
      {/* hover redirect */}
      <div className={styles.overlay}>
        <Link to={`/product/${product.alias}`} className={styles.seeDetailsBtn}>
          See Details
        </Link>
        <div className={styles.overlayoptions}>
          <p>
            <ShareSvg /> Share
          </p>
          <p>
            <CompareSvg /> Compare
          </p>
          <p>
            <LikeSvg /> Like
          </p>
        </div>
      </div>
    </div>
  );
};

export default ProductCard;
