INSERT INTO product (
  name, alias, price, review, smalldescription, size, color, sku, category, tags, new, descount, description, info, image
) VALUES
-- Living Room Product
(
  'Modern Sectional Sofa',
  'Sofazim',
  2499.99,
  4.7,
  'A spacious and comfortable sectional sofa perfect for modern living rooms.',
  ARRAY['Large', 'Medium'],
  ARRAY['Gray', 'Beige'],
  'LIV-SOF-001',
  ARRAY['Living', 'Sofa'],
  ARRAY['comfortable', 'modern', 'sectional'],
  true,
  10,
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',  
  'Includes 2-year warranty and free delivery.',
  ARRAY['https://placehold.co/600x400?text=Living+Sofa', 'https://placehold.co/600x400?text=Living+Sofa+2']
),

-- Dining Room Product
(
  'Elegant Dining Table Set',
  'Mesinha',
  1799.00,
  4.5,
  'A stylish dining table set with 6 chairs, perfect for family gatherings.',
  ARRAY['6-seater'],
  ARRAY['Walnut', 'Black'],
  'DIN-TBL-002',
  ARRAY['Dining', 'Table'],
  ARRAY['wooden', 'elegant', 'set'],
  true,
  15,  
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  'Easy to assemble. Chairs included.',
  ARRAY['https://placehold.co/600x400?text=Dining+Table', 'https://placehold.co/600x400?text=Dining+Chairs']
),

-- Bedroom Product
(
  'Queen Size Bed Frame',
  'Cama',
  1299.50,
  4.8,
  'Sturdy queen size bed frame with a minimalist design.',
  ARRAY['Queen'],
  ARRAY['White', 'Oak'],
  'BED-FRM-003',
  ARRAY['Bedroom', 'Bed'],
  ARRAY['queen', 'wooden', 'frame'],
  true,
  20,
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  'Slatted base included. Mattress not included.',
  ARRAY['https://placehold.co/600x400?text=Bed+Frame', 'https://placehold.co/600x400?text=Bedroom+Bed']
),

-- Living Room Product
(
  'Recliner Armchair',
  'Poltroninha',
  899.99,
  4.6,
  'A plush recliner armchair for ultimate relaxation.',
  ARRAY['Standard'],
  ARRAY['Blue', 'Gray'],
  'LIV-ARM-004',
  ARRAY['Living', 'Armchair'],
  ARRAY['recliner', 'comfortable', 'modern'],
  false,
  5,
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  'Manual recline function.',
  ARRAY['https://placehold.co/600x400?text=Armchair']
),

-- Bedroom Product
(
  'Nightstand with Drawer',
  'Armario',
  299.00,
  4.3,
  'Modern nightstand with a spacious drawer and open shelf.',
  ARRAY['Standard'],
  ARRAY['Oak', 'Black'],
  'BED-NTST-005',
  ARRAY['Bedroom', 'Nightstand'],
  ARRAY['nightstand', 'drawer', 'bedroom'],
  true,
  0,
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  'Easy to clean surface.',
  ARRAY['https://placehold.co/600x400?text=Nightstand']
);