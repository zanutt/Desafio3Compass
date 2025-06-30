import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Product {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  price: number;

  @Column()
  review: number;

  @Column('text', { array: true, nullable: true })
  size: string[] | null;

  @Column('text', { array: true, nullable: true })
  color: string[] | null;

  @Column()
  sku: string;

  @Column('text', { array: true })
  category: string[];

  @Column('text', { array: true })
  tags: string[];

  @Column({ default: true })
  new: boolean;

  @Column()
  descount: number;

  @Column()
  description: string;

  @Column()
  info: string;

  @Column('text', { array: true, nullable: true })
  image: string[] | null;
}
