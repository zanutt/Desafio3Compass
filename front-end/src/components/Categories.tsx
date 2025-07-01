import React from "react";

import styles from "./Categories.module.css";

const Categories = () => {
  return (
    <div className={styles.cats}>
      <a href="">
        <img src="/assets/dining.png" alt="Dining" />
        Dining
      </a>
      <a href="">
        <img src="/assets/living.png" alt="Living" />
        Living
      </a>
      <a href="">
        <img src="/assets/bedroom.png" alt="Bedroom" />
        Bedroom
      </a>
    </div>
  );
};

export default Categories;
