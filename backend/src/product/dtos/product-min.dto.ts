import { Expose, Transform } from 'class-transformer';

export class ProductMinDto {
  @Expose()
  name: string;

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
