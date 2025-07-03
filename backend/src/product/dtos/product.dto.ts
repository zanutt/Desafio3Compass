import { Expose } from 'class-transformer';

export class ProductDto {
  @Expose()
  name: string;

  @Expose()
  price: number;

  @Expose()
  review: number;

  @Expose()
  customreviews: number;

  @Expose()
  info: string;

  @Expose()
  smalldescription: string;

  @Expose()
  descount: number;

  @Expose()
  image: string[];

  @Expose()
  size: string[];

  @Expose()
  color: string[];

  @Expose()
  sku: string;

  @Expose()
  category: string[];

  @Expose()
  tags: string[];

  @Expose()
  description: string;
}
