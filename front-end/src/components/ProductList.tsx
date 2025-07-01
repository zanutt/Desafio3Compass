import React from "react";
import styles from "./ProductList.module.css";
import ProductCard from "./ProductCard";
import type { Product } from "../types/Product";

interface Props {
  products: Product[];
}

const ProductList: React.FC<Props> = ({ products }) => (
  <div className={styles.productList}>
    {products.map((product) => (
      <ProductCard key={product.alias} product={product} />
    ))}
  </div>
);

export default ProductList;
