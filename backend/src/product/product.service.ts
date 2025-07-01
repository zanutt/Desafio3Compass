import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Product } from './product.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ProductService {
  constructor(@InjectRepository(Product) private repo: Repository<Product>) {}

  findOne(id: number) {
    if (!id) {
      return null;
    }
    return this.repo.findOneBy({ id });
  }

  findAllByCategory(cat: string, page: number, count: number) {
    const skip = (page - 1) * count;

    return this.repo
      .createQueryBuilder('product')
      .where(
        'LOWER(:cat) = ANY(SELECT LOWER(c) FROM unnest(product.category) AS c)',
        { cat },
      )
      .skip(skip)
      .take(count)
      .getManyAndCount()
      .then(([products, total]) => {
        console.log('products:', products, 'total:', total);
        return {
          products,
          total,
          totalPages: Math.ceil(total / count),
          current: page,
        };
      });
  }

  findAllPaginated(page: number, count: number) {
    const skip = (page - 1) * count;
    return this.repo
      .createQueryBuilder('product')
      .skip(skip)
      .take(count)
      .getManyAndCount()
      .then(([products, total]) => ({
        products,
        total,
        totalPages: Math.ceil(total / count),
        currentPage: page,
      }));
  }
}
