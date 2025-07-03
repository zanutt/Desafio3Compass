import React from "react";

import styles from "./RouteBar.module.css";

interface Props {
  productname: string;
}

const RouteBar: React.FC<Props> = ({ productname }) => {
  return (
    <div className={styles.routebar}>
      <p>Home</p>
      <p className={styles.darktext}>&gt;</p>
      <p>Shop</p>
      <p className={styles.darktext}>&gt;</p>
      <p>|</p>
      <p className={styles.darktext}>{productname}</p>
    </div>
  );
};

export default RouteBar;
