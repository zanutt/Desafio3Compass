export interface Product {
  id: number;
  name: string;
  alias: string;
  price: number;
  descount: number;
  image?: string[] | string | undefined;
  new: boolean;
  review?: number | undefined;
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
