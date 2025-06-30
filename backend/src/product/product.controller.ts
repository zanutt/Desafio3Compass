import { Controller, Get, Query } from '@nestjs/common';
import { ProductService } from './product.service';

@Controller('product')
export class ProductController {
  constructor(private productService: ProductService) {}
  @Get('/all')
  async FindAllProducts(@Query('count') count: string) {
    return this.productService.findAll(parseInt(count) || 8);
  }

  @Get()
  async findAllProductByCategory(
    @Query('category') cat: string,
    @Query('count') count: string,
  ) {
    return this.productService.findAllByCategory(cat, parseInt(count));
  }
}
