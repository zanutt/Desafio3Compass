import { Expose, Transform } from 'class-transformer';

export class ProductMinDto {
  @Expose()
  id: number;

  @Expose()
  name: string;

  @Expose()
  category: string[];

  @Expose()
  alias: string;

  @Expose()
  price: number;

  @Expose()
  descount: number;

  @Expose()
  @Transform(({ value }) => (Array.isArray(value) ? value[0] : value))
  image: string;

  @Expose()
  new: boolean;
}
