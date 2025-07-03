/* eslint-disable @typescript-eslint/no-unused-vars */
import React, { useRef, useEffect, useState } from "react";
import ReactDOM from "react-dom";
import styles from "./FilterBar.module.css";
import FilterSvg from "./FilterSvg";
import BallsSvg from "./BallsSvg";
import ViewList from "./ViewList";

type FilterBarProps = {
  onSortChange?: (sort: string) => void;
  onFilterChange?: (filter: string) => void;
  onPerPageChange?: (perPage: number) => void;
  currentPage: number;
  perPage: number;
  totalResults: number;
  sortValue?: string;
  filterValue?: string;
};

const DROPDOWN_OPTIONS = [
  { value: "", label: "All" },
  { value: "dining", label: "Dining" },
  { value: "living", label: "Living" },
  { value: "bedroom", label: "Bedroom" },
];

const FilterBar: React.FC<FilterBarProps> = ({
  onSortChange,
  onFilterChange,
  onPerPageChange,
  currentPage,
  perPage,
  totalResults,
  sortValue = "new",
  filterValue = "",
}) => {
  const [filterOpen, setFilterOpen] = useState(false);
  const [dropdownPos, setDropdownPos] = useState<{
    top: number;
    left: number;
    width: number;
  }>({ top: 0, left: 0, width: 0 });
  const buttonRef = useRef<HTMLButtonElement>(null);

  // Fecha o dropdown ao clicar fora
  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (
        buttonRef.current &&
        !buttonRef.current.contains(event.target as Node)
      ) {
        setFilterOpen(false);
      }
    }
    if (filterOpen) {
      document.addEventListener("mousedown", handleClickOutside);
    } else {
      document.removeEventListener("mousedown", handleClickOutside);
    }
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, [filterOpen]);

  // Calcula a posição do dropdown
  useEffect(() => {
    if (filterOpen && buttonRef.current) {
      const rect = buttonRef.current.getBoundingClientRect();
      setDropdownPos({
        top: rect.bottom + window.scrollY,
        left: rect.left + window.scrollX,
        width: rect.width,
      });
    }
  }, [filterOpen]);

  const handleSortChange = (e: React.ChangeEvent<HTMLSelectElement>) => {
    if (onSortChange) onSortChange(e.target.value);
  };

  const handleFilterSelect = (value: string) => {
    setFilterOpen(false);
    if (onFilterChange) onFilterChange(value);
  };

  // Garante que os valores são números válidos
  const safeCurrentPage = Number(currentPage) || 1;
  const safePerPage = Number(perPage) || 8;
  const safeTotalResults = Number(totalResults) || 0;

  const start =
    safeTotalResults === 0 ? 0 : (safeCurrentPage - 1) * safePerPage + 1;
  const end = Math.min(safeCurrentPage * safePerPage, safeTotalResults);

  // Dropdown via Portal
  const dropdown = filterOpen
    ? ReactDOM.createPortal(
        <ul
          className={styles.dropdown}
          style={{
            position: "absolute",
            top: dropdownPos.top,
            left: dropdownPos.left,
            minWidth: dropdownPos.width,
            zIndex: 9999,
          }}
        >
          {DROPDOWN_OPTIONS.map((opt) => (
            <li
              key={opt.value}
              onMouseDown={() => handleFilterSelect(opt.value)}
            >
              {opt.label}
            </li>
          ))}
        </ul>,
        document.body
      )
    : null;

  return (
    <>
      <div className={styles.filterBar}>
        <div className={styles.filterGroup}>
          <button
            className={styles.filterButton}
            onClick={() => setFilterOpen((open) => !open)}
            type="button"
            ref={buttonRef}
          >
            <FilterSvg />
            Filter
          </button>
        </div>
        <BallsSvg />
        <ViewList />
        <p>|</p>
        <p>
          Showing {start}-{end} of {safeTotalResults} results
        </p>
        <div className={styles.filterGroup}>
          <label className={styles.label} htmlFor="showprods">
            Show:
          </label>
          <select
            id="showprods"
            className={styles.select}
            value={safePerPage}
            onChange={(e) => onPerPageChange?.(parseInt(e.target.value))}
          >
            <option value={8}>8</option>
            <option value={16}>16</option>
            <option value={32}>32</option>
          </select>
        </div>
        <div className={styles.filterGroup}>
          <label className={styles.label} htmlFor="sort">
            Sort By:
          </label>
          <select
            id="sort"
            className={styles.select}
            value={sortValue}
            onChange={handleSortChange}
          >
            <option value="random">Select...</option>
            <option value="new">New</option>
            <option value="priceasc">Ascendant</option>
            <option value="pricedsc">Decrescent</option>
          </select>
        </div>
      </div>
      {dropdown}
    </>
  );
};

export default FilterBar;
