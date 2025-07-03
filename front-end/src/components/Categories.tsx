import React from "react";
import { Link } from "react-router-dom"; // Use Link do react-router-dom
import styles from "./Categories.module.css";

const Categories = () => {
  return (
    <div className={styles.cats}>
      <Link to="/shop?filter=dining">
        <img src="/assets/dining.png" alt="Dining" />
        Dining
      </Link>
      <Link to="/shop?filter=living">
        <img src="/assets/living.png" alt="Living" />
        Living
      </Link>
      <Link to="/shop?filter=bedroom">
        <img src="/assets/bedroom.png" alt="Bedroom" />
        Bedroom
      </Link>
    </div>
  );
};

export default Categories;
