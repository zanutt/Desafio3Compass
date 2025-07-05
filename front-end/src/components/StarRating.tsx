import React from "react";
import styles from "./StarRating.module.css";

interface StarRatingProps {
  rating: number;
  max?: number;
}

const StarRating: React.FC<StarRatingProps> = ({ rating, max = 5 }) => {
  return (
    <div className={styles.stars}>
      {[...Array(max)].map((_, i) => {
        const filled = rating >= i + 1;
        const half = !filled && rating > i && rating < i + 1;
        return (
          <span key={i} className={styles.star}>
            {filled ? (
              <svg width="18" height="18" viewBox="0 0 20 20" fill="#FFD700">
                <path d="M10 15l-5.878 3.09 1.122-6.545L.488 6.91l6.561-.955L10 0l2.951 5.955 6.561.955-4.756 4.635 1.122 6.545z" />
              </svg>
            ) : half ? (
              <svg width="18" height="18" viewBox="0 0 20 20">
                <defs>
                  <linearGradient id={`half${i}`}>
                    <stop offset="50%" stopColor="#FFD700" />
                    <stop offset="50%" stopColor="#e0e0e0" />
                  </linearGradient>
                </defs>
                <path
                  d="M10 15l-5.878 3.09 1.122-6.545L.488 6.91l6.561-.955L10 0l2.951 5.955 6.561.955-4.756 4.635 1.122 6.545z"
                  fill={`url(#half${i})`}
                />
              </svg>
            ) : (
              <svg width="18" height="18" viewBox="0 0 20 20" fill="#e0e0e0">
                <path d="M10 15l-5.878 3.09 1.122-6.545L.488 6.91l6.561-.955L10 0l2.951 5.955 6.561.955-4.756 4.635 1.122 6.545z" />
              </svg>
            )}
          </span>
        );
      })}
    </div>
  );
};

export default StarRating;
