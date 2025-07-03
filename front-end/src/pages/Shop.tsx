import axios from "axios";
import { useState, useEffect } from "react";
import FilterBar from "../components/FilterBar";
import ProductList from "../components/ProductList";
import ShopBanner from "../components/ShopBanner";
import type { Product } from "../types/Product";
import BadgeCollection from "../components/BadgeCollection";
import Pagination from "../components/PaginationCount";
import { useLocation } from "react-router-dom";

const Shop = () => {
  const location = useLocation();

  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [page, setPage] = useState(1);
  const [perPage, setPerPage] = useState(8);
  const [totalPages, setTotalPages] = useState(1);
  const [totalResults, setTotalResults] = useState(0);
  const [sort, setSort] = useState("random");
  const [filter, setFilter] = useState(getFilterFromQuery());

  useEffect(() => {
    const fetchProducts = async () => {
      try {
        setLoading(true);
        const response = await axios.get(
          `http://localhost:3000/product/all?page=${page}&perPage=${perPage}&sort=${sort}&filter=${filter}`
        );
        setProducts(response.data.products);
        setTotalPages(response.data.totalPages || 1);
        setTotalResults(response.data.total || 0);
        setError(null);
      } catch (err) {
        setError("Erro ao carregar produtos : " + err);
      } finally {
        setLoading(false);
      }
    };

    fetchProducts();
  }, [page, perPage, sort, filter]);

  function getFilterFromQuery() {
    const params = new URLSearchParams(location.search);
    return params.get("filter") || "";
  }

  useEffect(() => {
    setFilter(getFilterFromQuery());
    setPage(1); // Opcional: resetar página ao trocar filtro pela URL
  }, [location.search]);

  if (loading) return <div>Carregando produtos...</div>;
  if (error) return <div>Erro: {error}</div>;
  return (
    <div>
      <ShopBanner />
      <FilterBar
        onSortChange={setSort}
        onFilterChange={(value) => {
          setFilter(value);
          setPage(1);
        }}
        onPerPageChange={(value) => {
          setPerPage(value);
          setPage(1);
        }}
        currentPage={page}
        perPage={perPage}
        totalResults={totalResults}
        sortValue={sort}
        filterValue={filter}
      />
      {products.length > 0 ? (
        <ProductList products={products} />
      ) : (
        <p>Nenhum produto encontrado</p>
      )}
      <Pagination
        currentPage={page}
        totalPages={totalPages}
        onPageChange={setPage}
        maxVisiblePages={3}
      />
      <BadgeCollection />
    </div>
  );
};

export default Shop;
