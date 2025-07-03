import {
  Controller,
  Get,
  NotFoundException,
  Param,
  Query,
} from '@nestjs/common';
import { ProductService } from './product.service';
import { Serialize } from '../interceptors/serialize.interceptor';
import { ProductMinDto } from './dtos/product-min.dto';
import { ProductDto } from './dtos/product.dto';
import { PaginatedProductsDto } from './dtos/paginated-product.dto';

@Controller('product')
export class ProductController {
  constructor(private productService: ProductService) {}

  @Get('/all')
  @Serialize(PaginatedProductsDto)
  async findAllProducts(
    @Query('page') page: string,
    @Query('perPage') perPage: string,
    @Query('sort') sort: string,
    @Query('filter') filter: string,
  ) {
    const perPageNum = parseInt(perPage) || 8;
    const pageNum = parseInt(page) || 1;
    return this.productService.findAllPaginated(
      pageNum,
      perPageNum,
      sort,
      filter,
    );
  }

  @Get('/category/:category')
  @Serialize(PaginatedProductsDto)
  async findAllProductByCategory(
    @Param('category') cat: string,
    @Query('count') count: string,
    @Query('page') page: string,
  ) {
    const countNum = parseInt(count) || 16;
    const pageNum = parseInt(page) || 1;
    return this.productService.findAllByCategory(cat, pageNum, countNum);
  }

  @Get('/:alias')
  @Serialize(ProductDto)
  async findProduct(@Param('alias') alias: string) {
    const product = await this.productService.findOne(alias);
    if (!product) {
      throw new NotFoundException('Product not found');
    }
    return product;
  }
}
