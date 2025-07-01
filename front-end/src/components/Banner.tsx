import React, { useRef, useState, type MouseEvent } from "react";
import styles from "./Banner.module.css";
import Retangulo from "./Retangulo";

interface BannerProps {
  src: string;
}

interface Selection {
  startX: number;
  startY: number;
  endX: number;
  endY: number;
}

const Banner: React.FC<BannerProps> = ({ src }) => {
  const [selection, setSelection] = useState<Selection | null>(null);
  const [dragging, setDragging] = useState(false);
  const imgRef = useRef<HTMLImageElement | null>(null);

  const handleMouseDown = (e: MouseEvent<HTMLImageElement>) => {
    if (!imgRef.current) return;
    const rect = imgRef.current.getBoundingClientRect();
    setSelection({
      startX: e.clientX - rect.left,
      startY: e.clientY - rect.top,
      endX: e.clientX - rect.left,
      endY: e.clientY - rect.top,
    });
    setDragging(true);
  };

  const handleMouseMove = (e: MouseEvent<HTMLDivElement>) => {
    if (!dragging || !imgRef.current) return;
    const rect = imgRef.current.getBoundingClientRect();
    setSelection((sel) =>
      sel
        ? {
            ...sel,
            endX: e.clientX - rect.left,
            endY: e.clientY - rect.top,
          }
        : null
    );
  };

  const handleMouseUp = () => {
    setDragging(false);
  };

  const getRectStyle = (): React.CSSProperties => {
    if (!selection) return { display: "none" };
    const x = Math.min(selection.startX, selection.endX);
    const y = Math.min(selection.startY, selection.endY);
    const width = Math.abs(selection.endX - selection.startX);
    const height = Math.abs(selection.endY - selection.startY);
    return {
      left: x,
      top: y,
      width,
      height,
      display: width && height ? "block" : "none",
    };
  };

  return (
    <div
      className={styles.container}
      onMouseMove={handleMouseMove}
      onMouseUp={handleMouseUp}
      onMouseLeave={handleMouseUp}
    >
      <img
        ref={imgRef}
        src={src}
        alt="Banner"
        className={styles.image}
        onMouseDown={handleMouseDown}
        draggable={false}
      />
      <div className={styles.selectionRect} style={getRectStyle()} />
      <Retangulo />
    </div>
  );
};

export default Banner;
