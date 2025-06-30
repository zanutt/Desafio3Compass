import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Product } from './product.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ProductService {
  constructor(@InjectRepository(Product) private repo: Repository<Product>) {}

  findAllByCategory(cat: string, count: number) {
    return this.repo
      .createQueryBuilder('product')
      .where(
        'LOWER(:cat) = ANY(SELECT LOWER(c) FROM unnest(product.category) AS c)',
        { cat },
      )
      .take(count || 16)
      .getMany();
  }

  findAll(count: number) {
    return this.repo.find({
      take: count,
    });
  }
}
