export interface Product {
  id: number;
  name: string;
  alias: string;
  price: number;
  descount: number;
  image: string[]; // array para todos os casos
  new: boolean;
  review?: number;
  customreviews?: number;
  info?: string;
  smalldescription?: string;
  size?: string | null;
  color?: string[];
  sku?: string;
  category?: string[];
  tags?: string[];
  description?: string;
}