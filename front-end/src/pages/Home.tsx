import { useEffect, useState } from "react";
import axios from "axios";
import Banner from "../components/Banner";
import ProductList from "../components/ProductList";
import type { Product } from "../types/Product";
import Body from "../components/Body";
import ShowMoreBtn from "../components/ShowMoreBtn";
import BadgeCollection from "../components/BadgeCollection";

const Home = () => {
  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchProducts = async () => {
      try {
        setLoading(true);
        const response = await axios.get(
          "http://localhost:3000/product/all?page=1&sort=random"
        );
        setProducts(response.data.products);
        setError(null);
      } catch (err) {
        console.error("Erro ao buscar produtos:", err);
        setError("Erro ao carregar produtos");
      } finally {
        setLoading(false);
      }
    };

    fetchProducts();
  }, []);

  if (loading) return <div>Carregando produtos...</div>;
  if (error) return <div>Erro: {error}</div>;

  return (
    <div>
      <Banner />
      <Body />
      {products.length > 0 ? (
        <ProductList products={products} />
      ) : (
        <p>Nenhum produto encontrado</p>
      )}
      <ShowMoreBtn />
      <BadgeCollection />
    </div>
  );
};

export default Home;
