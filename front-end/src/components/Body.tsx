import React from "react";

import styles from "./Body.module.css";
import Categories from "./Categories";

const Body = () => {
  return (
    <div className={styles.bodyitems}>
      <h1 className={styles.range}>Browse The Range</h1>
      <Categories />
      <h1 className={styles.prod}>Our Products</h1>
    </div>
  );
};

export default Body;
