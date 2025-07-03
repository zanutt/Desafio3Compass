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

const SORT_OPTIONS = [
  { value: "random", label: "Default" },
  { value: "new", label: "New" },
  { value: "priceasc", label: "Ascendant" },
  { value: "pricedsc", label: "Decrescent" },
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
  // filtro (Filter)
  const [filterOpen, setFilterOpen] = useState(false);
  const [dropdownPos, setDropdownPos] = useState<{
    top: number;
    left: number;
    width: number;
  }>({ top: 0, left: 0, width: 0 });
  const buttonRef = useRef<HTMLButtonElement>(null);

  // sort By custom dropdown
  const [sortOpen, setSortOpen] = useState(false);
  const [sortDropdownPos, setSortDropdownPos] = useState<{
    top: number;
    left: number;
    width: number;
  }>({ top: 0, left: 0, width: 0 });
  const sortButtonRef = useRef<HTMLButtonElement>(null);

  // fecha o dropdown do filtro ao clicar fora
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

  // fecha o dropdown do sort ao clicar fora
  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (
        sortButtonRef.current &&
        !sortButtonRef.current.contains(event.target as Node)
      ) {
        setSortOpen(false);
      }
    }
    if (sortOpen) {
      document.addEventListener("mousedown", handleClickOutside);
    } else {
      document.removeEventListener("mousedown", handleClickOutside);
    }
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, [sortOpen]);

  // calcula a posição do dropdown do filtro
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

  // calcula a posição do dropdown do sort
  useEffect(() => {
    if (sortOpen && sortButtonRef.current) {
      const rect = sortButtonRef.current.getBoundingClientRect();
      setSortDropdownPos({
        top: rect.bottom + window.scrollY,
        left: rect.left + window.scrollX,
        width: rect.width,
      });
    }
  }, [sortOpen]);

  const handleSortSelect = (value: string) => {
    setSortOpen(false);
    if (onSortChange) onSortChange(value);
  };

  const handleFilterSelect = (value: string) => {
    setFilterOpen(false);
    if (onFilterChange) onFilterChange(value);
  };

  const safeCurrentPage = Number(currentPage) || 1;
  const safePerPage = Number(perPage) || 8;
  const safeTotalResults = Number(totalResults) || 0;

  const start =
    safeTotalResults === 0 ? 0 : (safeCurrentPage - 1) * safePerPage + 1;
  const end = Math.min(safeCurrentPage * safePerPage, safeTotalResults);

  // Dropdown do filtro via Portal
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

  // Dropdown do sort via Portal
  const sortDropdown = sortOpen
    ? ReactDOM.createPortal(
        <ul
          className={styles.dropdown}
          style={{
            position: "absolute",
            top: sortDropdownPos.top,
            left: sortDropdownPos.left,
            minWidth: sortDropdownPos.width,
            zIndex: 9999,
          }}
        >
          {SORT_OPTIONS.map((opt) => (
            <li key={opt.value} onMouseDown={() => handleSortSelect(opt.value)}>
              {opt.label}
            </li>
          ))}
        </ul>,
        document.body
      )
    : null;

  const sortLabel =
    SORT_OPTIONS.find((opt) => opt.value === sortValue)?.label || "Default";

  return (
    <>
      <div className={styles.filterBar}>
        <div className={styles.leftside}>
          <button
            className={styles.filterButton}
            onClick={() => setFilterOpen((open) => !open)}
            type="button"
            ref={buttonRef}
          >
            <FilterSvg />
            Filter
          </button>

          <BallsSvg />
          <ViewList />
          <p className={styles.pipe}>|</p>
          <p>
            Showing {start}-{end} of {safeTotalResults} results
          </p>
        </div>
        <div className={styles.leftside}>
          <div className={styles.selector}>
            <label className={styles.label} htmlFor="showprods">
              Show :
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
          <div className={styles.selector}>
            <label className={styles.label} htmlFor="sort">
              Sort By :
            </label>
            <button
              className={
                styles.selectBoxButton + (sortOpen ? " " + styles.active : "")
              }
              onClick={() => setSortOpen((open) => !open)}
              type="button"
              ref={sortButtonRef}
              id="sort"
            >
              {sortLabel}
            </button>
          </div>
        </div>
      </div>
      {dropdown}
      {sortDropdown}
    </>
  );
};

export default FilterBar;
