import { BrowserRouter, Routes, Route } from "react-router";
import Home from "./pages/Home";
import Shop from "./pages/Shop";
import SingleProductPage from "./pages/SingleProductPage";
import NavBar from "./components/NavBar";
import Footer from "./components/Footer";

import styles from "./App.module.css";

function App() {
  return (
    <main className={styles.main}>
      <BrowserRouter>
        <NavBar />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/shop" element={<Shop />} />
          <Route path="/product/:alias" element={<SingleProductPage />} />
        </Routes>
        <Footer />
      </BrowserRouter>
    </main>
  );
}

export default App;
