import styles from "./Footer.module.css";

const Footer = () => {
  return (
    <footer id="contact">
      <div className={styles.footer}>
        <div className={styles.logotxt}>
          <h3>Furniro.</h3>
          <p>
            400 University Drive Suite 200 Coral
            <br /> Gables,
            <br /> FL 33134 USA
          </p>
        </div>
        <div className={styles.links}>
          <h4>Links</h4>
          <ul>
            <li>Home</li>
            <li>Shop</li>
            <li>About</li>
            <li>Contact</li>
          </ul>
        </div>
        <div className={styles.links}>
          <h4>Help</h4>
          <ul>
            <li>Payment Options</li>
            <li>Returns</li>
            <li>Privacy Policies</li>
          </ul>
        </div>
        <div className={styles.newsletter}>
          <h4>Newsletter</h4>
          <form className={styles.newsletterForm}>
            <input type="email" placeholder="Enter Your Email Address" />
            <button type="submit">SUBSCRIBE</button>
          </form>
        </div>
      </div>
      <div className={styles.endfooter}>
        <hr></hr>
        <p>2025 Furniro. All rights reserved</p>
      </div>
    </footer>
  );
};

export default Footer;
