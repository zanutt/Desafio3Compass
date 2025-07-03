import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Product } from './product.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ProductService {
  constructor(@InjectRepository(Product) private repo: Repository<Product>) {}

  findOne(alias: string) {
    if (!alias) {
      return null;
    }
    return this.repo.findOneBy({ alias });
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
        return {
          products,
          total,
          totalPages: Math.ceil(total / count),
          current: page,
        };
      });
  }

  findAllPaginated(
    page: number,
    perPage: number,
    sort?: string,
    filter?: string,
  ) {
    const skip = (page - 1) * perPage;
    let query = this.repo.createQueryBuilder('product');

    if (filter) {
      query = query.where(
        `EXISTS (
    SELECT 1 FROM unnest(product.category) AS cat
    WHERE LOWER(cat) LIKE :filter
  )`,
        {
          filter: `%${filter.toLowerCase()}%`,
        },
      );
    }

    if (sort === 'priceasc') {
      query = query.orderBy('product.price', 'ASC');
    } else if (sort === 'pricedsc') {
      query = query.orderBy('product.price', 'DESC');
    } else if (sort === 'new') {
      if (filter) {
        query = query.andWhere('product.new = :isNew', { isNew: true });
      } else {
        query = query.where('product.new = :isNew', { isNew: true });
      }
    } else if (sort === 'random') {
      query = query.orderBy('RANDOM()');
    }

    return query
      .skip(skip)
      .take(perPage)
      .getManyAndCount()
      .then(([products, total]) => ({
        products,
        total,
        totalPages: Math.ceil(total / perPage),
        currentPage: page,
      }));
  }
}
