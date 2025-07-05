import styles from "./Banner.module.css";

const Banner = () => {
  return (
    <div className={styles.container}>
      <div className={styles.textBox}>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut <br />
        elit tellus, luctus nec ullamcorper mattis.
      </div>
    </div>
  );
};

export default Banner;
