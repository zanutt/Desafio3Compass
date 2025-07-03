import { Expose, Type } from 'class-transformer';
import { ProductMinDto } from './product-min.dto';

export class PaginatedProductsDto {
  @Expose()
  total: number;

  @Expose()
  totalPages: number;

  @Expose()
  current: number;

  @Expose()
  @Type(() => ProductMinDto)
  products: ProductMinDto[];
}
