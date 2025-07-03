import React from "react";
import styles from "./PaginationCount.module.css";

interface PaginationProps {
  currentPage: number;
  totalPages: number;
  onPageChange: (page: number) => void;
  maxVisiblePages?: number;
}

const Pagination: React.FC<PaginationProps> = ({
  currentPage,
  totalPages,
  onPageChange,
  maxVisiblePages = 3,
}) => {
  if (totalPages <= 1) return null;

  let start = Math.max(1, currentPage - Math.floor(maxVisiblePages / 2));
  const end = Math.min(totalPages, start + maxVisiblePages - 1);

  if (end - start + 1 < maxVisiblePages) {
    start = Math.max(1, end - maxVisiblePages + 1);
  }

  const pages = [];
  for (let i = start; i <= end; i++) {
    pages.push(i);
  }

  return (
    <div className={styles.container}>
      {currentPage > 1 && (
        <button
          className={styles.button}
          onClick={() => onPageChange(currentPage - 1)}
        >
          Previous
        </button>
      )}
      {pages.map((num) => (
        <button
          key={num}
          onClick={() => onPageChange(num)}
          className={`${styles.button} ${num === currentPage ? styles.active : ""}`}
        >
          {num}
        </button>
      ))}
      {currentPage < totalPages && (
        <button
          className={styles.button}
          onClick={() => onPageChange(currentPage + 1)}
        >
          Next
        </button>
      )}
    </div>
  );
};

export default Pagination;
