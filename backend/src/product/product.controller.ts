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
    @Query('count') count: string,
    @Query('page') page: string,
  ) {
    const countNum = parseInt(count) || 8;
    const pageNum = parseInt(page) || 1;
    return this.productService.findAllPaginated(pageNum, countNum);
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

  @Get('/:id')
  @Serialize(ProductDto)
  async findProduct(@Param('id') id: string) {
    const product = await this.productService.findOne(parseInt(id));
    if (!product) {
      throw new NotFoundException('Product not found');
    }
    return product;
  }
}
