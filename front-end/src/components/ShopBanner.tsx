import React from "react";

import styles from "./ShopBanner.module.css";

const ShopBanner = () => {
  return (
    <div className={styles.container}>
      <div className={styles.textBox}>
        <h2>Shop</h2>
        <div className={styles.sublinks}>
          <a href="/">Home</a>
          <p>&gt;</p>
          <p className={styles.shop}>Shop</p>
        </div>
      </div>
    </div>
  );
};

export default ShopBanner;
