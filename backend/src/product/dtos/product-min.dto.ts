import { Expose } from 'class-transformer';

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
  image: string;

  @Expose()
  new: boolean;
}
