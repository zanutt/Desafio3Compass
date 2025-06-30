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

@Controller('product')
export class ProductController {
  constructor(private productService: ProductService) {}

  @Get('/all')
  @Serialize(ProductMinDto)
  async FindAllProducts(@Query('count') count: string) {
    return this.productService.findAll(parseInt(count) || 8);
  }

  @Get('/category/:category')
  @Serialize(ProductMinDto)
  async findAllProductByCategory(
    @Param('category') cat: string,
    @Query('count') count: string,
  ) {
    return this.productService.findAllByCategory(cat, parseInt(count));
  }

  @Get('/:id')
  async findProduct(@Param('id') id: string) {
    const product = await this.productService.findOne(parseInt(id));
    if (!product) {
      throw new NotFoundException('Product not found');
    }
    return product;
  }
}
