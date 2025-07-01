-- Limpar produtos existentes (descomente se necessário)
DELETE FROM product;
ALTER SEQUENCE product_id_seq RESTART WITH 1;

-- Produtos da categoria: Bedroom
INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    1,
    'Modern Platform Bed',
    'modern-platform-bed',
    819,
    4,
    NULL,
    'Sleek and minimalist platform bed',
    '{"Twin","Queen"}',
    '{"Beige","White","Gold"}',
    'MODERNPLATFORMBED-1999',
    '{"Bedroom"}',
    '{"luxury","comfortable","affordable"}',
    false,
    1,
    'This modern platform bed is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1633948393301-d43e3ec0e5cd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwbW9kZXJuJTIwcGxhdGZvcm0lMjBiZWR8ZW58MHwwfHx8MTc1MTM4NTU1N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1590490359854-dfba19688d70?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwbW9kZXJuJTIwcGxhdGZvcm0lMjBiZWR8ZW58MHwwfHx8MTc1MTM4NTU1N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721742736276-1eb1374657a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwbW9kZXJuJTIwcGxhdGZvcm0lMjBiZWR8ZW58MHwwfHx8MTc1MTM4NTU1N3ww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    2,
    'Luxury Mattress',
    'luxury-mattress',
    950,
    4,
    74,
    'Premium comfort memory foam mattress',
    '{"Large"}',
    '{"Brown"}',
    'LUXURYMATTRESS-216',
    '{"Bedroom"}',
    '{"elegant","stylish","affordable"}',
    true,
    39,
    'This luxury mattress is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1742319096912-7bb94fdfeb03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwbHV4dXJ5JTIwbWF0dHJlc3N8ZW58MHwwfHx8MTc1MTM4NTU1OHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1654064550858-c62b971a378a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwbHV4dXJ5JTIwbWF0dHJlc3N8ZW58MHwwfHx8MTc1MTM4NTU1OHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1698517486200-e89403ea2738?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwbHV4dXJ5JTIwbWF0dHJlc3N8ZW58MHwwfHx8MTc1MTM4NTU1OHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    3,
    'Wooden Nightstand',
    'wooden-nightstand',
    1115,
    2,
    267,
    'Elegant bedside table with storage',
    '{"Twin","Queen"}',
    '{"Gray","Navy","Brown","White"}',
    'WOODENNIGHTSTAND-208',
    '{"Bedroom"}',
    '{"stylish","affordable","classic","contemporary","elegant"}',
    false,
    48,
    'This wooden nightstand is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1631015108709-db4bea2690f9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwd29vZGVuJTIwbmlnaHRzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTU4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1631015108855-724e4712a3f9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwd29vZGVuJTIwbmlnaHRzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTU4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1631015108776-19a4ac25a741?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwd29vZGVuJTIwbmlnaHRzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTU4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1631015109011-2512f83d1c0e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwd29vZGVuJTIwbmlnaHRzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTU4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1631015108968-ba3b87f89005?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwd29vZGVuJTIwbmlnaHRzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTU4fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    4,
    'Velvet Armchair',
    'velvet-armchair',
    642,
    5,
    16,
    'Comfortable reading chair',
    '{"Large"}',
    '{"Cream","Charcoal"}',
    'VELVETARMCHAIR-7222',
    '{"Bedroom"}',
    '{"luxury","modern"}',
    false,
    67,
    'This velvet armchair is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1655149588780-e8aaae4627d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwdmVsdmV0JTIwYXJtY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU1OXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1576909023157-8cfea9e53818?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwdmVsdmV0JTIwYXJtY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU1OXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1647012292003-1c8c783df3c7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwdmVsdmV0JTIwYXJtY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU1OXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1646061142491-fc141798ba14?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwdmVsdmV0JTIwYXJtY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU1OXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1680384648487-4c3e537f491c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwdmVsdmV0JTIwYXJtY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU1OXww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    5,
    'Mirrored Dresser',
    'mirrored-dresser',
    241,
    4,
    102,
    'Stylish storage solution',
    NULL,
    NULL,
    'MIRROREDDRESSER-6432',
    '{"Bedroom"}',
    '{"affordable","modern","minimalist","classic","durable"}',
    true,
    33,
    'This mirrored dresser is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1717449730054-da7a8d4140b6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwbWlycm9yZWQlMjBkcmVzc2VyfGVufDB8MHx8fDE3NTEzODU1NjB8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1595515106886-43b1443a2e8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwbWlycm9yZWQlMjBkcmVzc2VyfGVufDB8MHx8fDE3NTEzODU1NjB8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1621781727259-c4bdcbd86570?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwbWlycm9yZWQlMjBkcmVzc2VyfGVufDB8MHx8fDE3NTEzODU1NjB8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1637777304873-68c6edca55e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwbWlycm9yZWQlMjBkcmVzc2VyfGVufDB8MHx8fDE3NTEzODU1NjB8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    6,
    'Pendant Light',
    'bedroom-pendant-light',
    1483,
    1,
    376,
    'Modern hanging light fixture',
    NULL,
    '{"White","Charcoal","Navy","Gold"}',
    'BEDROOMPENDANTLIGHT-8487',
    '{"Bedroom"}',
    '{"minimalist","durable","elegant","contemporary"}',
    true,
    60,
    'This pendant light is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1621215052063-6ed29c948b31?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwcGVuZGFudCUyMGxpZ2h0fGVufDB8MHx8fDE3NTEzODU1NjB8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1649024517884-a161b75fa15a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwcGVuZGFudCUyMGxpZ2h0fGVufDB8MHx8fDE3NTEzODU1NjB8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1489630114164-dbd774c5a337?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwcGVuZGFudCUyMGxpZ2h0fGVufDB8MHx8fDE3NTEzODU1NjB8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1581309700026-48b494fd8c47?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwcGVuZGFudCUyMGxpZ2h0fGVufDB8MHx8fDE3NTEzODU1NjB8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    7,
    'Area Rug',
    'bedroom-area-rug',
    468,
    2,
    440,
    'Soft and cozy floor covering',
    '{"Extra Large","Large","King"}',
    '{"Gold","White","Silver","Brown"}',
    'BEDROOMAREARUG-1717',
    '{"Bedroom"}',
    '{"affordable","minimalist","luxury","classic","comfortable"}',
    false,
    59,
    'This area rug is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1745905308908-25f35bacd146?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NTYxfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1718717621302-a359be21a111?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NTYxfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560185893-a55cbc8c57e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NTYxfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1614715661635-abb0547c125c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NTYxfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    8,
    'Blackout Curtains',
    'blackout-curtains',
    2010,
    3,
    442,
    'Light-blocking window treatment',
    NULL,
    '{"Cream","Black","Gray"}',
    'BLACKOUTCURTAINS-6898',
    '{"Bedroom"}',
    '{"comfortable","affordable","contemporary","stylish","durable"}',
    false,
    56,
    'This blackout curtains is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1587874522487-fe10e954d035?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwYmxhY2tvdXQlMjBjdXJ0YWluc3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1700412741145-4c8f7ec00fd1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwYmxhY2tvdXQlMjBjdXJ0YWluc3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1660324391295-ab5df4558c70?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwYmxhY2tvdXQlMjBjdXJ0YWluc3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1704305013484-3e2905a83c82?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwYmxhY2tvdXQlMjBjdXJ0YWluc3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    9,
    'Memory Foam Pillow',
    'memory-foam-pillow',
    1059,
    4,
    NULL,
    'Ergonomic sleep support',
    '{"King","Large","Queen"}',
    '{"Gold","Black"}',
    'MEMORYFOAMPILLOW-5499',
    '{"Bedroom"}',
    '{"modern","durable","minimalist"}',
    false,
    65,
    'This memory foam pillow is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1700004058880-f3d97630c19a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwbWVtb3J5JTIwZm9hbSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1615619160632-20f0a6b680d3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwbWVtb3J5JTIwZm9hbSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1600414428640-f78a67c2aa3b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwbWVtb3J5JTIwZm9hbSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1673201102066-b0599d45002b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwbWVtb3J5JTIwZm9hbSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1728034261604-09c28075c60d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwbWVtb3J5JTIwZm9hbSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTYyfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    10,
    'Bed Frame',
    'bed-frame',
    1337,
    1,
    470,
    'Sturdy metal bed foundation',
    NULL,
    NULL,
    'BEDFRAME-5239',
    '{"Bedroom"}',
    '{"elegant","durable","stylish","minimalist"}',
    false,
    66,
    'This bed frame is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1726108397211-6507220a6a21?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwYmVkJTIwZnJhbWV8ZW58MHwwfHx8MTc1MTM4NTU2M3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1688382575764-8a6a65d3821e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwYmVkJTIwZnJhbWV8ZW58MHwwfHx8MTc1MTM4NTU2M3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1688382575775-9aaa5025524e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwYmVkJTIwZnJhbWV8ZW58MHwwfHx8MTc1MTM4NTU2M3ww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    11,
    'Wardrobe',
    'wardrobe',
    1790,
    2,
    359,
    'Spacious clothing storage',
    '{"Twin"}',
    '{"Black","White"}',
    'WARDROBE-2231',
    '{"Bedroom"}',
    '{"modern","contemporary","affordable","comfortable"}',
    true,
    43,
    'This wardrobe is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1573311392049-4186e3a47e9c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwd2FyZHJvYmV8ZW58MHwwfHx8MTc1MTM4NTU2NHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1631048834949-85e003d913c9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwd2FyZHJvYmV8ZW58MHwwfHx8MTc1MTM4NTU2NHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1630699375019-c334927264df?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwd2FyZHJvYmV8ZW58MHwwfHx8MTc1MTM4NTU2NHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1630699293259-0b6c08606c62?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwd2FyZHJvYmV8ZW58MHwwfHx8MTc1MTM4NTU2NHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1631048499455-4f9e26f23b9f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwd2FyZHJvYmV8ZW58MHwwfHx8MTc1MTM4NTU2NHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    12,
    'Vanity Table',
    'vanity-table',
    700,
    3,
    NULL,
    'Elegant makeup station',
    NULL,
    NULL,
    'VANITYTABLE-4899',
    '{"Bedroom"}',
    '{"affordable","durable","luxury","elegant","stylish"}',
    true,
    66,
    'This vanity table is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1652190455129-6d97f8d7a75b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwdmFuaXR5JTIwdGFibGV8ZW58MHwwfHx8MTc1MTM4NTU2NHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1669247164834-2f09bc4ed72b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwdmFuaXR5JTIwdGFibGV8ZW58MHwwfHx8MTc1MTM4NTU2NHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1669247164859-5f6d1baf9f33?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwdmFuaXR5JTIwdGFibGV8ZW58MHwwfHx8MTc1MTM4NTU2NHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    13,
    'Chest of Drawers',
    'chest-drawers',
    1819,
    1,
    NULL,
    'Multi-drawer storage unit',
    '{"Twin"}',
    '{"Gold","Charcoal","Beige"}',
    'CHESTDRAWERS-8755',
    '{"Bedroom"}',
    '{"luxury","classic","durable","stylish"}',
    false,
    11,
    'This chest of drawers is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1643731082243-280cd18aa03d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwY2hlc3QlMjBvZiUyMGRyYXdlcnN8ZW58MHwwfHx8MTc1MTM4NTU2NXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1568506759799-16b274da9e15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwY2hlc3QlMjBvZiUyMGRyYXdlcnN8ZW58MHwwfHx8MTc1MTM4NTU2NXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1599703678443-4fdafa9e1d0a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwY2hlc3QlMjBvZiUyMGRyYXdlcnN8ZW58MHwwfHx8MTc1MTM4NTU2NXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1580862842845-5aa6f6438329?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwY2hlc3QlMjBvZiUyMGRyYXdlcnN8ZW58MHwwfHx8MTc1MTM4NTU2NXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1690310588492-fc8f92bff323?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwY2hlc3QlMjBvZiUyMGRyYXdlcnN8ZW58MHwwfHx8MTc1MTM4NTU2NXww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    14,
    'Bedside Lamp',
    'bedside-lamp',
    1543,
    2,
    263,
    'Ambient reading light',
    '{"Twin","Queen","King"}',
    '{"Gray"}',
    'BEDSIDELAMP-2579',
    '{"Bedroom"}',
    '{"modern","affordable","elegant","durable","luxury"}',
    false,
    30,
    'This bedside lamp is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1658595149174-ff76486ec800?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwYmVkc2lkZSUyMGxhbXB8ZW58MHwwfHx8MTc1MTM4NTU2NXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1658595149281-8d6bb3643eab?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwYmVkc2lkZSUyMGxhbXB8ZW58MHwwfHx8MTc1MTM4NTU2NXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1658595148963-13b7da6dcd6d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwYmVkc2lkZSUyMGxhbXB8ZW58MHwwfHx8MTc1MTM4NTU2NXww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    15,
    'Throw Blanket',
    'throw-blanket',
    930,
    1,
    417,
    'Cozy bedroom accent',
    NULL,
    '{"Beige","Navy","Cream"}',
    'THROWBLANKET-1702',
    '{"Bedroom"}',
    '{"durable","affordable"}',
    true,
    10,
    'This throw blanket is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1724166591876-837f21036ef6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwdGhyb3clMjBibGFua2V0fGVufDB8MHx8fDE3NTEzODU1NjZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1696987026455-c2c7555ca10f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwdGhyb3clMjBibGFua2V0fGVufDB8MHx8fDE3NTEzODU1NjZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1727706572437-4fcda0cbd66f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwdGhyb3clMjBibGFua2V0fGVufDB8MHx8fDE3NTEzODU1NjZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1604864850415-6bded3e6d452?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwdGhyb3clMjBibGFua2V0fGVufDB8MHx8fDE3NTEzODU1NjZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1664458595373-1583c0e3ea1e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwdGhyb3clMjBibGFua2V0fGVufDB8MHx8fDE3NTEzODU1NjZ8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    16,
    'Wall Mirror',
    'wall-mirror',
    1730,
    1,
    NULL,
    'Decorative bedroom mirror',
    '{"Small","Large"}',
    NULL,
    'WALLMIRROR-4573',
    '{"Bedroom"}',
    '{"classic","affordable","elegant","stylish","contemporary"}',
    false,
    17,
    'This wall mirror is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1653204280036-c272f16ec7ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwd2FsbCUyMG1pcnJvcnxlbnwwfDB8fHwxNzUxMzg1NTY3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721222202284-ca0bb66f73ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwd2FsbCUyMG1pcnJvcnxlbnwwfDB8fHwxNzUxMzg1NTY3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1718894071320-550cd7195ec4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwd2FsbCUyMG1pcnJvcnxlbnwwfDB8fHwxNzUxMzg1NTY3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1718894071404-b59a1edd4072?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwd2FsbCUyMG1pcnJvcnxlbnwwfDB8fHwxNzUxMzg1NTY3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721222201438-b59e2bbca679?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwd2FsbCUyMG1pcnJvcnxlbnwwfDB8fHwxNzUxMzg1NTY3fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    17,
    'Ottoman Storage',
    'ottoman-storage',
    1874,
    4,
    NULL,
    'Multi-functional seating',
    NULL,
    '{"Beige","Charcoal"}',
    'OTTOMANSTORAGE-3461',
    '{"Bedroom"}',
    '{"modern","classic","luxury","affordable","contemporary"}',
    false,
    17,
    'This ottoman storage is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1648115315559-620fb2f655aa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwb3R0b21hbiUyMHN0b3JhZ2V8ZW58MHwwfHx8MTc1MTM4NTU2OHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1613377740126-991e463acfd7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwb3R0b21hbiUyMHN0b3JhZ2V8ZW58MHwwfHx8MTc1MTM4NTU2OHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1708910880430-41ddb1967745?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwb3R0b21hbiUyMHN0b3JhZ2V8ZW58MHwwfHx8MTc1MTM4NTU2OHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1740446569136-a2dfa1c9f7d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwb3R0b21hbiUyMHN0b3JhZ2V8ZW58MHwwfHx8MTc1MTM4NTU2OHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    18,
    'Ceiling Fan',
    'ceiling-fan',
    388,
    3,
    423,
    'Air circulation and lighting',
    '{"Twin","Extra Large"}',
    '{"Brown","Black"}',
    'CEILINGFAN-7809',
    '{"Bedroom"}',
    '{"durable","modern"}',
    false,
    3,
    'This ceiling fan is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1634552668865-e97a920f5650?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwY2VpbGluZyUyMGZhbnxlbnwwfDB8fHwxNzUxMzg1NTY4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1718717621302-a359be21a111?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwY2VpbGluZyUyMGZhbnxlbnwwfDB8fHwxNzUxMzg1NTY4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/flagged/photo-1556438758-e02fa974a98f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwY2VpbGluZyUyMGZhbnxlbnwwfDB8fHwxNzUxMzg1NTY4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1680703008401-c5daa1789316?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwY2VpbGluZyUyMGZhbnxlbnwwfDB8fHwxNzUxMzg1NTY4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1727706572437-4fcda0cbd66f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwY2VpbGluZyUyMGZhbnxlbnwwfDB8fHwxNzUxMzg1NTY4fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    19,
    'Headboard',
    'headboard',
    1019,
    3,
    NULL,
    'Upholstered bed accent',
    NULL,
    '{"Gray"}',
    'HEADBOARD-2909',
    '{"Bedroom"}',
    '{"durable","luxury","elegant"}',
    true,
    0,
    'This headboard is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1577975142952-221c53e51a10?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwaGVhZGJvYXJkfGVufDB8MHx8fDE3NTEzODU1Njl8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1567111231229-8765962a4730?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwaGVhZGJvYXJkfGVufDB8MHx8fDE3NTEzODU1Njl8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1718894071402-fb944e2a1849?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwaGVhZGJvYXJkfGVufDB8MHx8fDE3NTEzODU1Njl8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560185893-d9680d601385?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwaGVhZGJvYXJkfGVufDB8MHx8fDE3NTEzODU1Njl8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    20,
    'Jewelry Box',
    'jewelry-box',
    1496,
    4,
    NULL,
    'Elegant accessory storage',
    '{"Small","Extra Large","Queen"}',
    '{"Silver","Gold","Navy","White"}',
    'JEWELRYBOX-8297',
    '{"Bedroom"}',
    '{"affordable","luxury","durable","stylish","elegant"}',
    false,
    57,
    'This jewelry box is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1647849208531-65544855dd46?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwamV3ZWxyeSUyMGJveHxlbnwwfDB8fHwxNzUxMzg1NTY5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1638208170417-2464f9699df1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwamV3ZWxyeSUyMGJveHxlbnwwfDB8fHwxNzUxMzg1NTcwfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1528797664208-e5a8c0b98881?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwamV3ZWxyeSUyMGJveHxlbnwwfDB8fHwxNzUxMzg1NTcwfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    21,
    'Floor Mirror',
    'floor-mirror',
    1824,
    3,
    248,
    'Full-length dressing mirror',
    NULL,
    '{"Charcoal","Black","Gold","Gray"}',
    'FLOORMIRROR-3946',
    '{"Bedroom"}',
    '{"durable","stylish","contemporary","elegant"}',
    false,
    37,
    'This floor mirror is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1721222202284-ca0bb66f73ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwZmxvb3IlMjBtaXJyb3J8ZW58MHwwfHx8MTc1MTM4NTU3MHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1718894071320-550cd7195ec4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwZmxvb3IlMjBtaXJyb3J8ZW58MHwwfHx8MTc1MTM4NTU3MHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721222201438-b59e2bbca679?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwZmxvb3IlMjBtaXJyb3J8ZW58MHwwfHx8MTc1MTM4NTU3MHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    22,
    'Bedding Set',
    'bedding-set',
    1648,
    3,
    124,
    'Complete sheet and pillow set',
    NULL,
    NULL,
    'BEDDINGSET-6244',
    '{"Bedroom"}',
    '{"elegant","affordable","comfortable","luxury"}',
    true,
    5,
    'This bedding set is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1642731797384-71b6eff18102?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwYmVkZGluZyUyMHNldHxlbnwwfDB8fHwxNzUxMzg1NTcxfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1606796913825-2b02883605e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwYmVkZGluZyUyMHNldHxlbnwwfDB8fHwxNzUxMzg1NTcxfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1743748978909-169017ab0720?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwYmVkZGluZyUyMHNldHxlbnwwfDB8fHwxNzUxMzg1NTcxfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1623111771662-43bc41429d82?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwYmVkZGluZyUyMHNldHxlbnwwfDB8fHwxNzUxMzg1NTcxfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1571508602699-6cddb34f8649?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwYmVkZGluZyUyMHNldHxlbnwwfDB8fHwxNzUxMzg1NTcxfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    23,
    'Accent Chair',
    'bedroom-accent-chair',
    1468,
    2,
    242,
    'Stylish seating option',
    '{"Large","Medium"}',
    '{"Charcoal"}',
    'BEDROOMACCENTCHAIR-6304',
    '{"Bedroom"}',
    '{"durable","luxury"}',
    false,
    15,
    'This accent chair is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1643897903946-b7ddb32c4780?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwYWNjZW50JTIwY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU3MXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1686327419359-2dd28eb48729?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwYWNjZW50JTIwY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU3MXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1679248861788-37e2a37a0219?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwYWNjZW50JTIwY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU3MXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1601528021192-86fb8e91f04c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwYWNjZW50JTIwY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU3MXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1548763671-8777c887b95a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwYWNjZW50JTIwY2hhaXJ8ZW58MHwwfHx8MTc1MTM4NTU3MXww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    24,
    'Table Lamp',
    'bedroom-table-lamp',
    105,
    3,
    371,
    'Decorative lighting',
    '{"Small","Extra Large","King"}',
    '{"Cream","Navy","Charcoal","Black"}',
    'BEDROOMTABLELAMP-1946',
    '{"Bedroom"}',
    '{"modern","luxury"}',
    false,
    65,
    'This table lamp is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1666871700531-feb829d325b3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwdGFibGUlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1NzJ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1628304457639-3dd4ded74a8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwdGFibGUlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1NzJ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1608118940326-1f5c3c49d932?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwdGFibGUlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1NzJ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/flagged/photo-1600002330113-089044216a65?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwdGFibGUlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1NzJ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1611596189625-00250acd385c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwdGFibGUlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1NzJ8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    25,
    'Storage Bench',
    'storage-bench',
    1895,
    3,
    78,
    'Seating with hidden storage',
    '{"Large","Twin","Queen"}',
    '{"Charcoal","Brown"}',
    'STORAGEBENCH-4237',
    '{"Bedroom"}',
    '{"stylish","comfortable","contemporary"}',
    false,
    46,
    'This storage bench is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1678988226654-8a8540faa8e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwc3RvcmFnZSUyMGJlbmNofGVufDB8MHx8fDE3NTEzODU1NzN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1736738742702-f519e130e7c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwc3RvcmFnZSUyMGJlbmNofGVufDB8MHx8fDE3NTEzODU1NzN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721825176413-eea9d1e8ae8d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwc3RvcmFnZSUyMGJlbmNofGVufDB8MHx8fDE3NTEzODU1NzN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1621871738871-a8dc0a112db0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwc3RvcmFnZSUyMGJlbmNofGVufDB8MHx8fDE3NTEzODU1NzN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1678988223920-82b0b3136446?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwc3RvcmFnZSUyMGJlbmNofGVufDB8MHx8fDE3NTEzODU1NzN8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    26,
    'Wall Sconce',
    'wall-sconce',
    485,
    5,
    199,
    'Mounted accent lighting',
    NULL,
    '{"Black","White","Brown"}',
    'WALLSCONCE-5147',
    '{"Bedroom"}',
    '{"modern","elegant","classic","minimalist","contemporary"}',
    false,
    56,
    'This wall sconce is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1666871700531-feb829d325b3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwd2FsbCUyMHNjb25jZXxlbnwwfDB8fHwxNzUxMzg1NTczfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/flagged/photo-1600002330113-089044216a65?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwd2FsbCUyMHNjb25jZXxlbnwwfDB8fHwxNzUxMzg1NTczfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1608118940326-1f5c3c49d932?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwd2FsbCUyMHNjb25jZXxlbnwwfDB8fHwxNzUxMzg1NTczfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1611596189625-00250acd385c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwd2FsbCUyMHNjb25jZXxlbnwwfDB8fHwxNzUxMzg1NTczfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1552647426-ce4318143fcd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwd2FsbCUyMHNjb25jZXxlbnwwfDB8fHwxNzUxMzg1NTczfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    27,
    'Comforter',
    'comforter',
    1808,
    4,
    164,
    'Warm and fluffy bedding',
    '{"Twin","Extra Large","Queen"}',
    '{"Charcoal","Gold","Silver","Cream"}',
    'COMFORTER-1660',
    '{"Bedroom"}',
    '{"stylish","elegant"}',
    false,
    44,
    'This comforter is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1680176850645-ade1784f90ca?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwY29tZm9ydGVyfGVufDB8MHx8fDE3NTEzODU1NzR8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1698350880277-704db08f979c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwY29tZm9ydGVyfGVufDB8MHx8fDE3NTEzODU1NzR8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560449752-ac541afdd6b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwY29tZm9ydGVyfGVufDB8MHx8fDE3NTEzODU1NzR8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1604864850415-6bded3e6d452?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwY29tZm9ydGVyfGVufDB8MHx8fDE3NTEzODU1NzR8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    28,
    'Shoe Rack',
    'shoe-rack',
    746,
    4,
    313,
    'Organized footwear storage',
    '{"Large","King","Extra Large"}',
    '{"Gray","Brown","Silver","White"}',
    'SHOERACK-847',
    '{"Bedroom"}',
    '{"luxury","comfortable","affordable"}',
    false,
    64,
    'This shoe rack is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1722764387624-0fa6faf0889e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwc2hvZSUyMHJhY2t8ZW58MHwwfHx8MTc1MTM4NTU3NXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1502238074616-a146498d5158?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwc2hvZSUyMHJhY2t8ZW58MHwwfHx8MTc1MTM4NTU3NXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1584467331229-652facdb4345?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwc2hvZSUyMHJhY2t8ZW58MHwwfHx8MTc1MTM4NTU3NXww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    29,
    'Decorative Pillow',
    'decorative-pillow',
    696,
    4,
    NULL,
    'Accent bedroom pillow',
    NULL,
    NULL,
    'DECORATIVEPILLOW-5857',
    '{"Bedroom"}',
    '{"modern","affordable","stylish","classic"}',
    true,
    37,
    'This decorative pillow is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1628842456894-d1fd298f2c3d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwZGVjb3JhdGl2ZSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTc1fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1722605914661-54c3992fe26c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwZGVjb3JhdGl2ZSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTc1fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1623175788405-46d2c0356c12?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwZGVjb3JhdGl2ZSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTc1fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1606796913825-2b02883605e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwZGVjb3JhdGl2ZSUyMHBpbGxvd3xlbnwwfDB8fHwxNzUxMzg1NTc1fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    30,
    'Alarm Clock',
    'alarm-clock',
    1975,
    1,
    189,
    'Stylish bedside timepiece',
    NULL,
    '{"White","Cream","Gold"}',
    'ALARMCLOCK-6684',
    '{"Bedroom"}',
    '{"modern","affordable","contemporary"}',
    false,
    16,
    'This alarm clock is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1519906972891-760794ed7951?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwYWxhcm0lMjBjbG9ja3xlbnwwfDB8fHwxNzUxMzg1NTc2fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1683357352694-5dc72afdc425?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwYWxhcm0lMjBjbG9ja3xlbnwwfDB8fHwxNzUxMzg1NTc2fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1706894854720-f5b6338443f8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwYWxhcm0lMjBjbG9ja3xlbnwwfDB8fHwxNzUxMzg1NTc2fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    31,
    'Laundry Hamper',
    'laundry-hamper',
    692,
    2,
    NULL,
    'Clothes storage basket',
    '{"Extra Large","Large"}',
    '{"White","Cream","Black"}',
    'LAUNDRYHAMPER-880',
    '{"Bedroom"}',
    '{"comfortable","modern"}',
    false,
    26,
    'This laundry hamper is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1572825593279-4e338c4d4d07?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwbGF1bmRyeSUyMGhhbXBlcnxlbnwwfDB8fHwxNzUxMzg1NTc3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1586373358434-0313676722e2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwbGF1bmRyeSUyMGhhbXBlcnxlbnwwfDB8fHwxNzUxMzg1NTc3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1611518574352-97177ea7f0cc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwbGF1bmRyeSUyMGhhbXBlcnxlbnwwfDB8fHwxNzUxMzg1NTc3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1692576855758-318a1fa8ff6d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwbGF1bmRyeSUyMGhhbXBlcnxlbnwwfDB8fHwxNzUxMzg1NTc3fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    32,
    'Room Divider',
    'room-divider',
    1683,
    2,
    352,
    'Privacy screen solution',
    NULL,
    '{"Brown","White"}',
    'ROOMDIVIDER-160',
    '{"Bedroom"}',
    '{"durable","contemporary","elegant"}',
    false,
    20,
    'This room divider is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1630699144418-6ca9059f9a44?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwcm9vbSUyMGRpdmlkZXJ8ZW58MHwwfHx8MTc1MTM4NTU3N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1630699144561-96812c5e3878?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwcm9vbSUyMGRpdmlkZXJ8ZW58MHwwfHx8MTc1MTM4NTU3N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1745221847962-0397cc719b8e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwcm9vbSUyMGRpdmlkZXJ8ZW58MHwwfHx8MTc1MTM4NTU3N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1675494051214-508a802d2638?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxiZWRyb29tJTIwcm9vbSUyMGRpdmlkZXJ8ZW58MHwwfHx8MTc1MTM4NTU3N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1722942430931-97bac93b9d80?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxiZWRyb29tJTIwcm9vbSUyMGRpdmlkZXJ8ZW58MHwwfHx8MTc1MTM4NTU3N3ww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    33,
    'Mattress Topper',
    'mattress-topper',
    576,
    2,
    463,
    'Extra comfort layer',
    '{"Small","Medium","Large"}',
    NULL,
    'MATTRESSTOPPER-1926',
    '{"Bedroom"}',
    '{"elegant","stylish","comfortable","contemporary"}',
    false,
    26,
    'This mattress topper is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1683576221425-d711598dbfda?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwbWF0dHJlc3MlMjB0b3BwZXJ8ZW58MHwwfHx8MTc1MTM4NTU3OHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1740446568302-0eca27e820b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwbWF0dHJlc3MlMjB0b3BwZXJ8ZW58MHwwfHx8MTc1MTM4NTU3OHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1742319096912-7bb94fdfeb03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwbWF0dHJlc3MlMjB0b3BwZXJ8ZW58MHwwfHx8MTc1MTM4NTU3OHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    34,
    'Bed Canopy',
    'bed-canopy',
    1406,
    5,
    383,
    'Romantic bedroom accent',
    NULL,
    NULL,
    'BEDCANOPY-6717',
    '{"Bedroom"}',
    '{"elegant","contemporary"}',
    true,
    20,
    'This bed canopy is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1670896420405-23aa2b4df422?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwYmVkJTIwY2Fub3B5fGVufDB8MHx8fDE3NTEzODU1Nzl8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1724582586413-6b69e1c94a17?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwYmVkJTIwY2Fub3B5fGVufDB8MHx8fDE3NTEzODU1Nzl8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721308898368-befe6431b5c6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwYmVkJTIwY2Fub3B5fGVufDB8MHx8fDE3NTEzODU1Nzl8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    35,
    'Closet Organizer',
    'closet-organizer',
    1326,
    4,
    441,
    'Space-saving storage system',
    '{"King"}',
    '{"Beige","Gold"}',
    'CLOSETORGANIZER-4265',
    '{"Bedroom"}',
    '{"contemporary","comfortable"}',
    false,
    47,
    'This closet organizer is perfect for your bedroom. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1742453161018-73e39a241541?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxiZWRyb29tJTIwY2xvc2V0JTIwb3JnYW5pemVyfGVufDB8MHx8fDE3NTEzODU1ODB8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721742604452-87a1daf6f5c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxiZWRyb29tJTIwY2xvc2V0JTIwb3JnYW5pemVyfGVufDB8MHx8fDE3NTEzODU1ODB8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1573311392049-4186e3a47e9c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxiZWRyb29tJTIwY2xvc2V0JTIwb3JnYW5pemVyfGVufDB8MHx8fDE3NTEzODU1ODB8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

-- Produtos da categoria: Living Room
INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    36,
    'Sectional Sofa',
    'sectional-sofa',
    972,
    5,
    NULL,
    'Spacious L-shaped seating',
    '{"Extra Large","Large"}',
    NULL,
    'SECTIONALSOFA-7119',
    '{"Living Room"}',
    '{"elegant","modern","classic","minimalist"}',
    false,
    58,
    'This sectional sofa is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1631510211190-a41d06ea835a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwc2VjdGlvbmFsJTIwc29mYXxlbnwwfDB8fHwxNzUxMzg1NTgwfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1632120669818-ed5498030e32?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwc2VjdGlvbmFsJTIwc29mYXxlbnwwfDB8fHwxNzUxMzg1NTgwfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1632119289059-793dd347950f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwc2VjdGlvbmFsJTIwc29mYXxlbnwwfDB8fHwxNzUxMzg1NTgwfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1631509716275-59e9d106504a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwc2VjdGlvbmFsJTIwc29mYXxlbnwwfDB8fHwxNzUxMzg1NTgwfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1633505412556-82c0921e8f4a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxsaXZpbmclMjByb29tJTIwc2VjdGlvbmFsJTIwc29mYXxlbnwwfDB8fHwxNzUxMzg1NTgwfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    37,
    'Coffee Table',
    'coffee-table',
    397,
    4,
    446,
    'Central living room table',
    '{"Twin","Small"}',
    NULL,
    'COFFEETABLE-3569',
    '{"Living Room"}',
    '{"modern","classic","comfortable"}',
    false,
    50,
    'This coffee table is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1651407825801-eec2dcbd86bd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwY29mZmVlJTIwdGFibGV8ZW58MHwwfHx8MTc1MTM4NTU4MXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1666585958641-4f70887372a1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwY29mZmVlJTIwdGFibGV8ZW58MHwwfHx8MTc1MTM4NTU4MXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1702865071679-514bda970354?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwY29mZmVlJTIwdGFibGV8ZW58MHwwfHx8MTc1MTM4NTU4MXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1651407825607-15c585d433c8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwY29mZmVlJTIwdGFibGV8ZW58MHwwfHx8MTc1MTM4NTU4MXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1651407825746-f7a3ded5b07a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxsaXZpbmclMjByb29tJTIwY29mZmVlJTIwdGFibGV8ZW58MHwwfHx8MTc1MTM4NTU4MXww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    38,
    'TV Stand',
    'tv-stand',
    1582,
    3,
    258,
    'Modern entertainment center',
    '{"Large","King"}',
    '{"Navy","Black","Charcoal","White"}',
    'TVSTAND-6459',
    '{"Living Room"}',
    '{"comfortable","luxury"}',
    false,
    0,
    'This tv stand is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1698434156086-918aa526b531?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwdHYlMjBzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTgyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1644248465235-b85ff6538829?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwdHYlMjBzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTgyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721523239127-56e784a498ad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwdHYlMjBzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTgyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1569265706531-0e32ac679f33?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwdHYlMjBzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTgyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1691290692144-c456d4c2751c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxsaXZpbmclMjByb29tJTIwdHYlMjBzdGFuZHxlbnwwfDB8fHwxNzUxMzg1NTgyfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    39,
    'Floor Lamp',
    'floor-lamp',
    909,
    5,
    131,
    'Ambient lighting solution',
    NULL,
    '{"Brown","Black","Cream"}',
    'FLOORLAMP-5103',
    '{"Living Room"}',
    '{"classic","stylish"}',
    true,
    21,
    'This floor lamp is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1678705387084-9593dc56ade5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwZmxvb3IlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1ODJ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1730989427568-0a6fdb5a2fb1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwZmxvb3IlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1ODJ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1663174729156-1d2641bf83d2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwZmxvb3IlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1ODJ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560448204-603b3fc33ddc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwZmxvb3IlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU1ODJ8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    40,
    'Bookshelf',
    'bookshelf',
    1182,
    1,
    126,
    'Stylish storage for books',
    NULL,
    '{"Black","White"}',
    'BOOKSHELF-541',
    '{"Living Room"}',
    '{"modern","classic"}',
    false,
    0,
    'This bookshelf is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1603745675948-ccaa96b1d45f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwYm9va3NoZWxmfGVufDB8MHx8fDE3NTEzODU1ODN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1683181181200-497e87dc6d4c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwYm9va3NoZWxmfGVufDB8MHx8fDE3NTEzODU1ODN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1620388640952-35a1d22d158d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwYm9va3NoZWxmfGVufDB8MHx8fDE3NTEzODU1ODN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1620388639945-990753377b58?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwYm9va3NoZWxmfGVufDB8MHx8fDE3NTEzODU1ODN8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    41,
    'Throw Pillows',
    'throw-pillows',
    1925,
    2,
    NULL,
    'Decorative accent pillows',
    '{"Queen","King","Small"}',
    NULL,
    'THROWPILLOWS-2789',
    '{"Living Room"}',
    '{"affordable","classic","minimalist"}',
    false,
    2,
    'This throw pillows is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1651407825932-f0719a963e0d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwdGhyb3clMjBwaWxsb3dzfGVufDB8MHx8fDE3NTEzODU1ODR8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1666585958641-4f70887372a1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwdGhyb3clMjBwaWxsb3dzfGVufDB8MHx8fDE3NTEzODU1ODR8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1696774276390-6ce82111140f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwdGhyb3clMjBwaWxsb3dzfGVufDB8MHx8fDE3NTEzODU1ODR8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1687870593213-78c6dadb0847?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwdGhyb3clMjBwaWxsb3dzfGVufDB8MHx8fDE3NTEzODU1ODR8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    42,
    'Wall Art',
    'wall-art',
    201,
    3,
    NULL,
    'Beautiful room decoration',
    '{"Extra Large","Large"}',
    '{"Charcoal"}',
    'WALLART-9952',
    '{"Living Room"}',
    '{"elegant","affordable","stylish","luxury","minimalist"}',
    false,
    65,
    'This wall art is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1721045028236-335af763f3d5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NTg0fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1685643096239-9b517edf150f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NTg0fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1634954156587-45fcb6564120?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NTg0fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1721045028639-6456efcdab01?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NTg0fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1634957255814-152a0f05a3dc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxsaXZpbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NTg0fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    43,
    'Side Table',
    'side-table',
    1091,
    4,
    14,
    'Convenient accent table',
    '{"Large","Twin","Extra Large"}',
    '{"Navy","Silver","Gray"}',
    'SIDETABLE-3505',
    '{"Living Room"}',
    '{"affordable","minimalist","luxury","stylish"}',
    false,
    14,
    'This side table is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1595388709981-acb517f14a67?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwc2lkZSUyMHRhYmxlfGVufDB8MHx8fDE3NTEzODU1ODV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1739981663508-b0232ff0b7c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwc2lkZSUyMHRhYmxlfGVufDB8MHx8fDE3NTEzODU1ODV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1606744824163-985d376605aa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwc2lkZSUyMHRhYmxlfGVufDB8MHx8fDE3NTEzODU1ODV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1558713089-d1aad46c19bf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwc2lkZSUyMHRhYmxlfGVufDB8MHx8fDE3NTEzODU1ODV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1682452664065-e0d911ca967e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxsaXZpbmclMjByb29tJTIwc2lkZSUyMHRhYmxlfGVufDB8MHx8fDE3NTEzODU1ODV8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    44,
    'Recliner Chair',
    'recliner-chair',
    1738,
    2,
    158,
    'Comfortable relaxation seating',
    '{"Large"}',
    NULL,
    'RECLINERCHAIR-9035',
    '{"Living Room"}',
    '{"modern","durable","contemporary","comfortable","classic"}',
    false,
    25,
    'This recliner chair is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1675198607888-822ac4876c87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwcmVjbGluZXIlMjBjaGFpcnxlbnwwfDB8fHwxNzUxMzg1NTg1fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1614597795732-f7607f30a491?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwcmVjbGluZXIlMjBjaGFpcnxlbnwwfDB8fHwxNzUxMzg1NTg1fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1605131797630-07675f65f1ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwcmVjbGluZXIlMjBjaGFpcnxlbnwwfDB8fHwxNzUxMzg1NTg1fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1690048584259-00e448ed5b6a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwcmVjbGluZXIlMjBjaGFpcnxlbnwwfDB8fHwxNzUxMzg1NTg1fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1558898434-af897d9ac0a4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxsaXZpbmclMjByb29tJTIwcmVjbGluZXIlMjBjaGFpcnxlbnwwfDB8fHwxNzUxMzg1NTg1fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    45,
    'Entertainment Unit',
    'entertainment-unit',
    330,
    4,
    151,
    'Media storage solution',
    NULL,
    NULL,
    'ENTERTAINMENTUNIT-5786',
    '{"Living Room"}',
    '{"luxury","stylish","minimalist","elegant"}',
    true,
    18,
    'This entertainment unit is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1733119454399-bfb2155de998?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwZW50ZXJ0YWlubWVudCUyMHVuaXR8ZW58MHwwfHx8MTc1MTM4NTU4Nnww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1734942607050-6aa79f02a9d7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwZW50ZXJ0YWlubWVudCUyMHVuaXR8ZW58MHwwfHx8MTc1MTM4NTU4Nnww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1733811073382-95d5b79c4cf1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwZW50ZXJ0YWlubWVudCUyMHVuaXR8ZW58MHwwfHx8MTc1MTM4NTU4Nnww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    46,
    'Area Rug',
    'living-area-rug',
    216,
    1,
    480,
    'Room-defining floor covering',
    NULL,
    '{"Silver","Brown"}',
    'LIVINGAREARUG-2083',
    '{"Living Room"}',
    '{"affordable","classic","minimalist"}',
    false,
    28,
    'This area rug is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1710392533268-eb7eb288d48e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NTg3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1605610973140-02080d1905ec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NTg3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1621373660651-081fc7f94fa4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NTg3fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    47,
    'Loveseat',
    'loveseat',
    1907,
    4,
    NULL,
    'Compact two-seater sofa',
    '{"Extra Large"}',
    '{"Beige","Brown"}',
    'LOVESEAT-6060',
    '{"Living Room"}',
    '{"affordable","contemporary","luxury"}',
    false,
    1,
    'This loveseat is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1733360485753-0b11ba7a3d91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwbG92ZXNlYXR8ZW58MHwwfHx8MTc1MTM4NTU4N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1646338954958-f526aab7d6ee?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwbG92ZXNlYXR8ZW58MHwwfHx8MTc1MTM4NTU4N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1641232458416-feace752b346?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwbG92ZXNlYXR8ZW58MHwwfHx8MTc1MTM4NTU4N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1674376360467-6dee088f35e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwbG92ZXNlYXR8ZW58MHwwfHx8MTc1MTM4NTU4N3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1599420187237-108ef829201c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxsaXZpbmclMjByb29tJTIwbG92ZXNlYXR8ZW58MHwwfHx8MTc1MTM4NTU4N3ww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    48,
    'Console Table',
    'console-table',
    388,
    3,
    NULL,
    'Narrow accent table',
    '{"Extra Large","Large","Medium"}',
    '{"Navy","Silver"}',
    'CONSOLETABLE-1006',
    '{"Living Room"}',
    '{"stylish","comfortable","affordable","minimalist","luxury"}',
    false,
    35,
    'This console table is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1560449752-b5d5c1c89cee?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwY29uc29sZSUyMHRhYmxlfGVufDB8MHx8fDE3NTEzODU1ODh8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560448205-97abe7378152?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwY29uc29sZSUyMHRhYmxlfGVufDB8MHx8fDE3NTEzODU1ODh8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560184897-1ee3713708ee?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwY29uc29sZSUyMHRhYmxlfGVufDB8MHx8fDE3NTEzODU1ODh8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    49,
    'Chandelier',
    'living-chandelier',
    1554,
    2,
    344,
    'Statement ceiling light',
    '{"Queen"}',
    '{"Silver","Charcoal","Black","White"}',
    'LIVINGCHANDELIER-6551',
    '{"Living Room"}',
    '{"modern","comfortable","contemporary","minimalist"}',
    false,
    53,
    'This chandelier is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1740140783522-dc8d9a8ef084?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwY2hhbmRlbGllcnxlbnwwfDB8fHwxNzUxMzg1NTg5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1668277156357-3e174dff9f1a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwY2hhbmRlbGllcnxlbnwwfDB8fHwxNzUxMzg1NTg5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1727271173705-c9c6fad3acbb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwY2hhbmRlbGllcnxlbnwwfDB8fHwxNzUxMzg1NTg5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1696861080288-0cc2f1cd48d5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxsaXZpbmclMjByb29tJTIwY2hhbmRlbGllcnxlbnwwfDB8fHwxNzUxMzg1NTg5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1717703236091-c13a01c23448?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxsaXZpbmclMjByb29tJTIwY2hhbmRlbGllcnxlbnwwfDB8fHwxNzUxMzg1NTg5fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    50,
    'Ottoman',
    'ottoman',
    1494,
    4,
    308,
    'Versatile footrest and seating',
    NULL,
    NULL,
    'OTTOMAN-106',
    '{"Living Room"}',
    '{"comfortable","minimalist","stylish"}',
    true,
    35,
    'This ottoman is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1560448204-603b3fc33ddc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxsaXZpbmclMjByb29tJTIwb3R0b21hbnxlbnwwfDB8fHwxNzUxMzg1NTg5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560449752-8b6023e2ab5a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxsaXZpbmclMjByb29tJTIwb3R0b21hbnxlbnwwfDB8fHwxNzUxMzg1NTg5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1727645710175-aa1dc3449e40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxsaXZpbmclMjByb29tJTIwb3R0b21hbnxlbnwwfDB8fHwxNzUxMzg1NTg5fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    51,
    'Curtains',
    'living-curtains',
    57,
    1,
    14,
    'Window treatment panels',
    '{"Twin","Extra Large","Queen"}',
    NULL,
    'LIVINGCURTAINS-6941',
    '{"Living Room"}',
    '{"modern","contemporary"}',
    false,
    58,
    'This curtains is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20curtains+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20curtains+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20curtains+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20curtains+4","https://placehold.co/800x600/cccccc/333333?text=living%20room%20curtains+5"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    52,
    'Accent Cabinet',
    'accent-cabinet',
    1894,
    5,
    58,
    'Decorative storage piece',
    NULL,
    '{"White","Gold","Gray","Silver"}',
    'ACCENTCABINET-7828',
    '{"Living Room"}',
    '{"elegant","affordable"}',
    false,
    44,
    'This accent cabinet is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20cabinet+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20cabinet+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20cabinet+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20cabinet+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    53,
    'Floor Cushions',
    'floor-cushions',
    1035,
    2,
    225,
    'Casual seating options',
    '{"Medium","Extra Large"}',
    '{"Navy","Cream","Black"}',
    'FLOORCUSHIONS-9042',
    '{"Living Room"}',
    '{"classic","minimalist","luxury"}',
    true,
    20,
    'This floor cushions is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20floor%20cushions+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20floor%20cushions+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20floor%20cushions+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20floor%20cushions+4","https://placehold.co/800x600/cccccc/333333?text=living%20room%20floor%20cushions+5"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    54,
    'Wall Shelves',
    'wall-shelves',
    376,
    1,
    NULL,
    'Floating display storage',
    '{"King","Twin"}',
    '{"Brown"}',
    'WALLSHELVES-7449',
    '{"Living Room"}',
    '{"affordable","elegant","modern"}',
    false,
    33,
    'This wall shelves is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20wall%20shelves+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20wall%20shelves+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20wall%20shelves+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20wall%20shelves+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    55,
    'Sofa Bed',
    'sofa-bed',
    906,
    3,
    NULL,
    'Convertible seating and sleeping',
    NULL,
    NULL,
    'SOFABED-6385',
    '{"Living Room"}',
    '{"stylish","elegant","affordable","modern","minimalist"}',
    false,
    66,
    'This sofa bed is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20sofa%20bed+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20sofa%20bed+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20sofa%20bed+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    56,
    'Armchair',
    'armchair',
    1064,
    3,
    NULL,
    'Classic single seating',
    NULL,
    '{"Gray","Brown"}',
    'ARMCHAIR-3398',
    '{"Living Room"}',
    '{"classic","affordable"}',
    false,
    34,
    'This armchair is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20armchair+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20armchair+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20armchair+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    57,
    'TV Mount',
    'tv-mount',
    223,
    5,
    NULL,
    'Wall-mounted TV bracket',
    '{"Small","Queen"}',
    '{"Black","Charcoal","Cream","Gold"}',
    'TVMOUNT-8596',
    '{"Living Room"}',
    '{"comfortable","stylish","affordable"}',
    false,
    29,
    'This tv mount is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20tv%20mount+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20tv%20mount+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20tv%20mount+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20tv%20mount+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    58,
    'Plant Stand',
    'plant-stand',
    1696,
    3,
    NULL,
    'Decorative plant display',
    '{"Twin"}',
    '{"Brown","Silver","Gray","Navy"}',
    'PLANTSTAND-1044',
    '{"Living Room"}',
    '{"durable","luxury"}',
    false,
    33,
    'This plant stand is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20plant%20stand+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20plant%20stand+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20plant%20stand+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20plant%20stand+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    59,
    'Magazine Rack',
    'magazine-rack',
    350,
    1,
    458,
    'Reading material organizer',
    NULL,
    '{"Black","Gray","White","Silver"}',
    'MAGAZINERACK-4516',
    '{"Living Room"}',
    '{"modern","classic"}',
    true,
    50,
    'This magazine rack is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20magazine%20rack+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20magazine%20rack+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20magazine%20rack+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20magazine%20rack+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    60,
    'Fireplace Screen',
    'fireplace-screen',
    899,
    5,
    405,
    'Safety and style for fireplace',
    '{"Queen","Small","Extra Large"}',
    '{"Cream","Charcoal"}',
    'FIREPLACESCREEN-5573',
    '{"Living Room"}',
    '{"durable","affordable","minimalist","luxury"}',
    true,
    29,
    'This fireplace screen is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20fireplace%20screen+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20fireplace%20screen+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20fireplace%20screen+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20fireplace%20screen+4","https://placehold.co/800x600/cccccc/333333?text=living%20room%20fireplace%20screen+5"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    61,
    'Bean Bag',
    'bean-bag',
    185,
    4,
    508,
    'Casual comfortable seating',
    '{"Queen","Large","Twin"}',
    '{"Gray","Cream","Charcoal","Brown"}',
    'BEANBAG-6853',
    '{"Living Room"}',
    '{"contemporary","modern","elegant","classic"}',
    false,
    5,
    'This bean bag is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20bean%20bag+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20bean%20bag+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20bean%20bag+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20bean%20bag+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    62,
    'Nesting Tables',
    'nesting-tables',
    303,
    4,
    NULL,
    'Space-saving table set',
    '{"Twin"}',
    '{"Charcoal"}',
    'NESTINGTABLES-9120',
    '{"Living Room"}',
    '{"comfortable","modern","classic","luxury"}',
    false,
    57,
    'This nesting tables is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20nesting%20tables+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20nesting%20tables+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20nesting%20tables+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    63,
    'Floor Vase',
    'floor-vase',
    1222,
    3,
    457,
    'Decorative accent piece',
    NULL,
    NULL,
    'FLOORVASE-4654',
    '{"Living Room"}',
    '{"comfortable","elegant","affordable"}',
    false,
    36,
    'This floor vase is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20floor%20vase+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20floor%20vase+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20floor%20vase+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    64,
    'Sofa Table',
    'sofa-table',
    2047,
    4,
    43,
    'Behind-sofa accent table',
    '{"Twin","Queen","King"}',
    '{"Charcoal","Silver","White","Brown"}',
    'SOFATABLE-7916',
    '{"Living Room"}',
    '{"modern","durable"}',
    false,
    19,
    'This sofa table is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20sofa%20table+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20sofa%20table+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20sofa%20table+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    65,
    'Ceiling Light',
    'ceiling-light',
    846,
    3,
    350,
    'Overhead room illumination',
    '{"Queen"}',
    NULL,
    'CEILINGLIGHT-6930',
    '{"Living Room"}',
    '{"durable","modern","elegant"}',
    true,
    6,
    'This ceiling light is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20ceiling%20light+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20ceiling%20light+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20ceiling%20light+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    66,
    'Storage Ottoman',
    'storage-ottoman',
    1433,
    3,
    493,
    'Hidden storage seating',
    NULL,
    '{"Cream","Black","White","Gray"}',
    'STORAGEOTTOMAN-5656',
    '{"Living Room"}',
    '{"elegant","affordable"}',
    true,
    31,
    'This storage ottoman is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20storage%20ottoman+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20storage%20ottoman+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20storage%20ottoman+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20storage%20ottoman+4","https://placehold.co/800x600/cccccc/333333?text=living%20room%20storage%20ottoman+5"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    67,
    'Picture Frames',
    'picture-frames',
    1713,
    4,
    NULL,
    'Photo display collection',
    NULL,
    NULL,
    'PICTUREFRAMES-1426',
    '{"Living Room"}',
    '{"elegant","durable","luxury","classic"}',
    false,
    50,
    'This picture frames is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20picture%20frames+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20picture%20frames+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20picture%20frames+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    68,
    'Throw Blanket',
    'living-throw-blanket',
    1389,
    1,
    109,
    'Cozy accent covering',
    '{"Medium","Small"}',
    '{"Brown","White","Navy","Charcoal"}',
    'LIVINGTHROWBLANKET-1811',
    '{"Living Room"}',
    '{"luxury","affordable","stylish"}',
    false,
    64,
    'This throw blanket is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20throw%20blanket+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20throw%20blanket+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20throw%20blanket+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    69,
    'Bar Cart',
    'living-bar-cart',
    1653,
    2,
    NULL,
    'Mobile entertaining station',
    NULL,
    NULL,
    'LIVINGBARCART-8071',
    '{"Living Room"}',
    '{"affordable","durable","classic","luxury"}',
    true,
    33,
    'This bar cart is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20bar%20cart+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20bar%20cart+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20bar%20cart+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    70,
    'Accent Mirror',
    'accent-mirror',
    241,
    3,
    NULL,
    'Decorative wall mirror',
    '{"King","Queen"}',
    '{"Gold","Gray","Beige"}',
    'ACCENTMIRROR-6923',
    '{"Living Room"}',
    '{"comfortable","durable"}',
    true,
    61,
    'This accent mirror is perfect for your living room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20mirror+1","https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20mirror+2","https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20mirror+3","https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20mirror+4","https://placehold.co/800x600/cccccc/333333?text=living%20room%20accent%20mirror+5"}'
  );

-- Produtos da categoria: Dining Room
INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    71,
    'Dining Table',
    'dining-table',
    1492,
    2,
    NULL,
    'Elegant family dining table',
    '{"Large","Queen","Medium"}',
    '{"Navy","Charcoal"}',
    'DININGTABLE-5406',
    '{"Dining Room"}',
    '{"elegant","modern","minimalist"}',
    true,
    56,
    'This dining table is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=dining%20room%20dining%20table+1","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20dining%20table+2","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20dining%20table+3","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20dining%20table+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    72,
    'Dining Chairs',
    'dining-chairs',
    202,
    3,
    132,
    'Comfortable seating set',
    NULL,
    '{"Brown"}',
    'DININGCHAIRS-201',
    '{"Dining Room"}',
    '{"modern","classic","luxury","affordable","comfortable"}',
    false,
    13,
    'This dining chairs is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=dining%20room%20dining%20chairs+1","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20dining%20chairs+2","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20dining%20chairs+3","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20dining%20chairs+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    73,
    'China Cabinet',
    'china-cabinet',
    1522,
    3,
    NULL,
    'Display and storage cabinet',
    '{"Twin","Queen"}',
    '{"Black","White","Silver","Brown"}',
    'CHINACABINET-6832',
    '{"Dining Room"}',
    '{"modern","classic","luxury","elegant"}',
    true,
    8,
    'This china cabinet is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=dining%20room%20china%20cabinet+1","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20china%20cabinet+2","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20china%20cabinet+3","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20china%20cabinet+4"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    74,
    'Chandelier',
    'dining-chandelier',
    593,
    4,
    94,
    'Statement lighting fixture',
    '{"King"}',
    '{"Beige","Gray","Gold"}',
    'DININGCHANDELIER-5926',
    '{"Dining Room"}',
    '{"durable","luxury","elegant","minimalist"}',
    true,
    43,
    'This chandelier is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=dining%20room%20chandelier+1","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20chandelier+2","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20chandelier+3","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20chandelier+4","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20chandelier+5"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    75,
    'Bar Cart',
    'dining-bar-cart',
    1981,
    3,
    493,
    'Mobile serving station',
    '{"Small","Medium"}',
    '{"Brown"}',
    'DININGBARCART-2702',
    '{"Dining Room"}',
    '{"durable","elegant","minimalist","stylish"}',
    false,
    64,
    'This bar cart is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=dining%20room%20bar%20cart+1","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20bar%20cart+2","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20bar%20cart+3","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20bar%20cart+4","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20bar%20cart+5"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    76,
    'Buffet Table',
    'buffet-table',
    1967,
    2,
    307,
    'Serving and storage furniture',
    '{"Queen","King"}',
    '{"Charcoal"}',
    'BUFFETTABLE-7952',
    '{"Dining Room"}',
    '{"modern","durable","classic","contemporary"}',
    false,
    41,
    'This buffet table is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=dining%20room%20buffet%20table+1","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20buffet%20table+2","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20buffet%20table+3","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20buffet%20table+4","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20buffet%20table+5"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    77,
    'Table Runner',
    'table-runner',
    81,
    3,
    41,
    'Decorative table accent',
    NULL,
    '{"Silver"}',
    'TABLERUNNER-4790',
    '{"Dining Room"}',
    '{"modern","minimalist"}',
    false,
    30,
    'This table runner is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://placehold.co/800x600/cccccc/333333?text=dining%20room%20table%20runner+1","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20table%20runner+2","https://placehold.co/800x600/cccccc/333333?text=dining%20room%20table%20runner+3"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    78,
    'Dining Bench',
    'dining-bench',
    1104,
    3,
    165,
    'Alternative seating option',
    NULL,
    '{"Brown","Black"}',
    'DININGBENCH-1267',
    '{"Dining Room"}',
    '{"affordable","classic","modern"}',
    false,
    12,
    'This dining bench is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1727187270576-99622a7af2a7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwYmVuY2h8ZW58MHwwfHx8MTc1MTM4NTYwMHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1696814292947-8b6f06af3df2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwYmVuY2h8ZW58MHwwfHx8MTc1MTM4NTYwMHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1652305459885-b7ae40f0d776?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwYmVuY2h8ZW58MHwwfHx8MTc1MTM4NTYwMHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1551554642-0de4c8ae4812?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwYmVuY2h8ZW58MHwwfHx8MTc1MTM4NTYwMHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    79,
    'Sideboard',
    'sideboard',
    448,
    5,
    293,
    'Dining room storage cabinet',
    NULL,
    '{"Beige","White","Navy","Gray"}',
    'SIDEBOARD-1301',
    '{"Dining Room"}',
    '{"modern","elegant","affordable","classic","comfortable"}',
    false,
    48,
    'This sideboard is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1593670755742-cf27bab84755?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwc2lkZWJvYXJkfGVufDB8MHx8fDE3NTEzODU2MDF8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1607448421773-f74d4b9b5919?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwc2lkZWJvYXJkfGVufDB8MHx8fDE3NTEzODU2MDF8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1667049234963-e85079125e28?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwc2lkZWJvYXJkfGVufDB8MHx8fDE3NTEzODU2MDF8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1634212926471-7abb22bfeb66?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwc2lkZWJvYXJkfGVufDB8MHx8fDE3NTEzODU2MDF8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    80,
    'Wine Rack',
    'wine-rack',
    497,
    4,
    117,
    'Bottle storage and display',
    '{"Extra Large","Large","King"}',
    '{"Charcoal","White"}',
    'WINERACK-2827',
    '{"Dining Room"}',
    '{"durable","contemporary","modern","minimalist"}',
    true,
    5,
    'This wine rack is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1701608246860-252f39579979?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwd2luZSUyMHJhY2t8ZW58MHwwfHx8MTc1MTM4NTYwMnww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1738544475560-e97924c92333?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwd2luZSUyMHJhY2t8ZW58MHwwfHx8MTc1MTM4NTYwMnww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1664839553733-59487c082cf4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwd2luZSUyMHJhY2t8ZW58MHwwfHx8MTc1MTM4NTYwMnww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    81,
    'Serving Tray',
    'serving-tray',
    1655,
    2,
    457,
    'Elegant food presentation',
    '{"Queen","Small"}',
    '{"Cream"}',
    'SERVINGTRAY-8893',
    '{"Dining Room"}',
    '{"affordable","durable","elegant","luxury","minimalist"}',
    true,
    26,
    'This serving tray is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1626201853398-7cba6a8ebd7f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMHRyYXl8ZW58MHwwfHx8MTc1MTM4NTYwM3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1733222013509-2eac30864e10?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMHRyYXl8ZW58MHwwfHx8MTc1MTM4NTYwM3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1654378556718-e3d98a26f63a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMHRyYXl8ZW58MHwwfHx8MTc1MTM4NTYwM3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1677129665421-c87a194338ec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMHRyYXl8ZW58MHwwfHx8MTc1MTM4NTYwM3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1598300064133-4bb9ae3123c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMHRyYXl8ZW58MHwwfHx8MTc1MTM4NTYwM3ww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    82,
    'Placemats',
    'placemats',
    1994,
    4,
    NULL,
    'Table protection and style',
    '{"Extra Large","Small","Medium"}',
    NULL,
    'PLACEMATS-4862',
    '{"Dining Room"}',
    '{"stylish","elegant"}',
    false,
    61,
    'This placemats is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1745848038186-5eceb6026334?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwcGxhY2VtYXRzfGVufDB8MHx8fDE3NTEzODU2MDN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1607448421773-f74d4b9b5919?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwcGxhY2VtYXRzfGVufDB8MHx8fDE3NTEzODU2MDN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1712924786040-d592049c417b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwcGxhY2VtYXRzfGVufDB8MHx8fDE3NTEzODU2MDN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1577639179896-9c854d81c609?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwcGxhY2VtYXRzfGVufDB8MHx8fDE3NTEzODU2MDN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1701608246860-252f39579979?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwcGxhY2VtYXRzfGVufDB8MHx8fDE3NTEzODU2MDN8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    83,
    'Centerpiece',
    'centerpiece',
    1578,
    3,
    226,
    'Table decoration focal point',
    NULL,
    '{"Cream"}',
    'CENTERPIECE-8640',
    '{"Dining Room"}',
    '{"affordable","stylish","elegant","modern"}',
    false,
    37,
    'This centerpiece is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1560184897-0e5d96d86acd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwY2VudGVycGllY2V8ZW58MHwwfHx8MTc1MTM4NTYwNHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1745816456001-009279ca7666?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwY2VudGVycGllY2V8ZW58MHwwfHx8MTc1MTM4NTYwNHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1607448421773-f74d4b9b5919?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwY2VudGVycGllY2V8ZW58MHwwfHx8MTc1MTM4NTYwNHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1634212926471-7abb22bfeb66?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwY2VudGVycGllY2V8ZW58MHwwfHx8MTc1MTM4NTYwNHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1676250747331-c4c9a3bcf1ca?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwY2VudGVycGllY2V8ZW58MHwwfHx8MTc1MTM4NTYwNHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    84,
    'Dining Set',
    'dining-set',
    952,
    5,
    214,
    'Complete table and chairs',
    '{"King"}',
    '{"Black"}',
    'DININGSET-2142',
    '{"Dining Room"}',
    '{"modern","contemporary","classic"}',
    true,
    12,
    'This dining set is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1732557377011-b822ddc13649?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwc2V0fGVufDB8MHx8fDE3NTEzODU2MDV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1673081752959-addbc864f678?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwc2V0fGVufDB8MHx8fDE3NTEzODU2MDV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1569857930183-be35a91f94fd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwc2V0fGVufDB8MHx8fDE3NTEzODU2MDV8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    85,
    'Bar Stools',
    'bar-stools',
    185,
    3,
    NULL,
    'Counter height seating',
    '{"Extra Large"}',
    '{"Gray"}',
    'BARSTOOLS-7699',
    '{"Dining Room"}',
    '{"classic","modern","elegant","contemporary","luxury"}',
    false,
    21,
    'This bar stools is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1560185127-6ed189bf02f4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwYmFyJTIwc3Rvb2xzfGVufDB8MHx8fDE3NTEzODU2MDZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1614597445336-8a67e9314d91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwYmFyJTIwc3Rvb2xzfGVufDB8MHx8fDE3NTEzODU2MDZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1682888818718-74b9ffa75907?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwYmFyJTIwc3Rvb2xzfGVufDB8MHx8fDE3NTEzODU2MDZ8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    86,
    'Hutch',
    'hutch',
    1448,
    1,
    317,
    'Display cabinet with shelving',
    '{"Small","Queen"}',
    NULL,
    'HUTCH-1175',
    '{"Dining Room"}',
    '{"contemporary","luxury","elegant","classic"}',
    false,
    45,
    'This hutch is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1614597445336-8a67e9314d91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwaHV0Y2h8ZW58MHwwfHx8MTc1MTM4NTYwN3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1682888818718-74b9ffa75907?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwaHV0Y2h8ZW58MHwwfHx8MTc1MTM4NTYwN3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1689039996283-d022a18c7cb9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwaHV0Y2h8ZW58MHwwfHx8MTc1MTM4NTYwN3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1634212926471-7abb22bfeb66?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwaHV0Y2h8ZW58MHwwfHx8MTc1MTM4NTYwN3ww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1574362847729-c114f4672e20?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwaHV0Y2h8ZW58MHwwfHx8MTc1MTM4NTYwN3ww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    87,
    'Pendant Lights',
    'pendant-lights',
    251,
    5,
    NULL,
    'Hanging dining lights',
    NULL,
    '{"Silver","Navy","Beige","Gold"}',
    'PENDANTLIGHTS-3677',
    '{"Dining Room"}',
    '{"stylish","classic"}',
    false,
    39,
    'This pendant lights is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1721146378270-1b93839f7ae7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwcGVuZGFudCUyMGxpZ2h0c3xlbnwwfDB8fHwxNzUxMzg1NjA3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1572987588171-03dc109d8b69?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwcGVuZGFudCUyMGxpZ2h0c3xlbnwwfDB8fHwxNzUxMzg1NjA3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1708102892338-2905bd928aec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwcGVuZGFudCUyMGxpZ2h0c3xlbnwwfDB8fHwxNzUxMzg1NjA3fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    88,
    'Table Cloth',
    'table-cloth',
    475,
    5,
    143,
    'Protective table covering',
    '{"Twin"}',
    '{"Black","Gray","Cream"}',
    'TABLECLOTH-1005',
    '{"Dining Room"}',
    '{"elegant","modern","affordable","classic","durable"}',
    false,
    16,
    'This table cloth is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1708679985190-b9d5a8efabfe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwdGFibGUlMjBjbG90aHxlbnwwfDB8fHwxNzUxMzg1NjA4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1608754048875-3a1cde86d37f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwdGFibGUlMjBjbG90aHxlbnwwfDB8fHwxNzUxMzg1NjA4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1676751319391-4e53495a0425?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwdGFibGUlMjBjbG90aHxlbnwwfDB8fHwxNzUxMzg1NjA4fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    89,
    'Napkin Rings',
    'napkin-rings',
    1393,
    5,
    180,
    'Elegant table accessories',
    '{"Queen"}',
    '{"Black","White","Brown"}',
    'NAPKINRINGS-4700',
    '{"Dining Room"}',
    '{"affordable","minimalist","stylish"}',
    false,
    56,
    'This napkin rings is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1681338764024-e6977bfd18db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwbmFwa2luJTIwcmluZ3N8ZW58MHwwfHx8MTc1MTM4NTYwOHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1600092024475-bb1857043709?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwbmFwa2luJTIwcmluZ3N8ZW58MHwwfHx8MTc1MTM4NTYwOHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1670541985306-7b33ab1013e4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwbmFwa2luJTIwcmluZ3N8ZW58MHwwfHx8MTc1MTM4NTYwOHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1676751319391-4e53495a0425?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwbmFwa2luJTIwcmluZ3N8ZW58MHwwfHx8MTc1MTM4NTYwOHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1665072462642-f51a6b108f9a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwbmFwa2luJTIwcmluZ3N8ZW58MHwwfHx8MTc1MTM4NTYwOHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    90,
    'Candle Holders',
    'candle-holders',
    1081,
    2,
    215,
    'Ambient lighting decor',
    NULL,
    '{"Navy"}',
    'CANDLEHOLDERS-2172',
    '{"Dining Room"}',
    '{"minimalist","elegant","affordable"}',
    true,
    41,
    'This candle holders is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1668936073458-6d670ac042b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwY2FuZGxlJTIwaG9sZGVyc3xlbnwwfDB8fHwxNzUxMzg1NjA5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1641544014231-2e0080672af7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwY2FuZGxlJTIwaG9sZGVyc3xlbnwwfDB8fHwxNzUxMzg1NjA5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1648323212273-3991e28ed566?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwY2FuZGxlJTIwaG9sZGVyc3xlbnwwfDB8fHwxNzUxMzg1NjA5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1701987408670-a85cc71b1823?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwY2FuZGxlJTIwaG9sZGVyc3xlbnwwfDB8fHwxNzUxMzg1NjA5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1599709729019-c27b3cfe4ad9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwY2FuZGxlJTIwaG9sZGVyc3xlbnwwfDB8fHwxNzUxMzg1NjA5fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    91,
    'Serving Bowl',
    'serving-bowl',
    1553,
    5,
    45,
    'Food presentation dish',
    NULL,
    NULL,
    'SERVINGBOWL-6626',
    '{"Dining Room"}',
    '{"comfortable","stylish","contemporary","elegant","luxury"}',
    false,
    29,
    'This serving bowl is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1608719509659-2741cdefd746?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMGJvd2x8ZW58MHwwfHx8MTc1MTM4NTYxMHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1598300064133-4bb9ae3123c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMGJvd2x8ZW58MHwwfHx8MTc1MTM4NTYxMHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1672303185512-399a42b2cf4a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMGJvd2x8ZW58MHwwfHx8MTc1MTM4NTYxMHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1746307415268-edaca3214f33?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMGJvd2x8ZW58MHwwfHx8MTc1MTM4NTYxMHww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1651928692978-8462ae8d1270?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwc2VydmluZyUyMGJvd2x8ZW58MHwwfHx8MTc1MTM4NTYxMHww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    92,
    'Wall Art',
    'dining-wall-art',
    584,
    3,
    NULL,
    'Dining room decoration',
    '{"Large","Medium"}',
    '{"Beige"}',
    'DININGWALLART-536',
    '{"Dining Room"}',
    '{"minimalist","modern"}',
    false,
    6,
    'This wall art is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1634957255814-152a0f05a3dc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NjExfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1720052814473-4ca9b0f4531c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NjExfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1581681920134-2b90db970c14?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NjExfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1535141686549-11c66f6e324b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NjExfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1599294897217-c7adde6254f8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwd2FsbCUyMGFydHxlbnwwfDB8fHwxNzUxMzg1NjExfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    93,
    'Floor Lamp',
    'dining-floor-lamp',
    463,
    5,
    47,
    'Additional room lighting',
    '{"Small"}',
    '{"Black","White","Gold","Navy"}',
    'DININGFLOORLAMP-94',
    '{"Dining Room"}',
    '{"minimalist","contemporary","luxury"}',
    false,
    21,
    'This floor lamp is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1509374280562-044290b43cb4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwZmxvb3IlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU2MTF8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1538375363129-70fdff2f8500?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwZmxvb3IlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU2MTF8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1714425341725-b7d9825f6e83?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwZmxvb3IlMjBsYW1wfGVufDB8MHx8fDE3NTEzODU2MTF8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    94,
    'Area Rug',
    'dining-area-rug',
    651,
    3,
    120,
    'Under-table floor covering',
    '{"Extra Large","Large","Queen"}',
    '{"Black","Gray"}',
    'DININGAREARUG-8553',
    '{"Dining Room"}',
    '{"stylish","modern","classic"}',
    false,
    48,
    'This area rug is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1745905308908-25f35bacd146?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NjEyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1683668612535-3a28bd898fa6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NjEyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560185008-186576e0f1e2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NjEyfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560185008-b033106af5c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwYXJlYSUyMHJ1Z3xlbnwwfDB8fHwxNzUxMzg1NjEyfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    95,
    'Server Cabinet',
    'server-cabinet',
    1199,
    4,
    NULL,
    'Dining storage solution',
    '{"Medium","Extra Large"}',
    '{"Black","Gray","White","Cream"}',
    'SERVERCABINET-4352',
    '{"Dining Room"}',
    '{"affordable","elegant","contemporary","stylish","durable"}',
    false,
    29,
    'This server cabinet is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1669236392214-927b52cb4682?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwc2VydmVyJTIwY2FiaW5ldHxlbnwwfDB8fHwxNzUxMzg1NjEzfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1669236392160-74bba8ac32cd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwc2VydmVyJTIwY2FiaW5ldHxlbnwwfDB8fHwxNzUxMzg1NjEzfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1701445952131-eaab0a82fb08?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwc2VydmVyJTIwY2FiaW5ldHxlbnwwfDB8fHwxNzUxMzg1NjEzfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    96,
    'Lazy Susan',
    'lazy-susan',
    107,
    4,
    NULL,
    'Rotating serving platform',
    NULL,
    '{"Cream"}',
    'LAZYSUSAN-5527',
    '{"Dining Room"}',
    '{"classic","stylish","durable","elegant"}',
    false,
    19,
    'This lazy susan is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1642070129860-c2f377afccfe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwbGF6eSUyMHN1c2FufGVufDB8MHx8fDE3NTEzODU2MTN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1634212926471-7abb22bfeb66?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwbGF6eSUyMHN1c2FufGVufDB8MHx8fDE3NTEzODU2MTN8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1707126186357-1690bc6866e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwbGF6eSUyMHN1c2FufGVufDB8MHx8fDE3NTEzODU2MTN8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    97,
    'Chair Cushions',
    'chair-cushions',
    1813,
    4,
    323,
    'Comfort seat padding',
    '{"Twin"}',
    '{"Black","White","Gold"}',
    'CHAIRCUSHIONS-1841',
    '{"Dining Room"}',
    '{"luxury","modern","elegant","affordable"}',
    true,
    15,
    'This chair cushions is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1729470813402-e342d8cba414?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwY2hhaXIlMjBjdXNoaW9uc3xlbnwwfDB8fHwxNzUxMzg1NjE0fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1558898434-af897d9ac0a4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwY2hhaXIlMjBjdXNoaW9uc3xlbnwwfDB8fHwxNzUxMzg1NjE0fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1649455767691-49c834dd3f6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwY2hhaXIlMjBjdXNoaW9uc3xlbnwwfDB8fHwxNzUxMzg1NjE0fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    98,
    'Wall Sconces',
    'dining-wall-sconces',
    2043,
    2,
    NULL,
    'Mounted accent lighting',
    '{"Medium","Large"}',
    '{"Brown","Charcoal"}',
    'DININGWALLSCONCES-5956',
    '{"Dining Room"}',
    '{"luxury","classic","affordable","stylish"}',
    false,
    1,
    'This wall sconces is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1715782414430-e1f0f4df354e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwd2FsbCUyMHNjb25jZXN8ZW58MHwwfHx8MTc1MTM4NTYxNXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1690126671026-623dc4f8370a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwd2FsbCUyMHNjb25jZXN8ZW58MHwwfHx8MTc1MTM4NTYxNXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1714577235579-053704a45d38?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwd2FsbCUyMHNjb25jZXN8ZW58MHwwfHx8MTc1MTM4NTYxNXww&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1560185127-6ed189bf02f4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwd2FsbCUyMHNjb25jZXN8ZW58MHwwfHx8MTc1MTM4NTYxNXww&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    99,
    'Display Shelf',
    'display-shelf',
    262,
    5,
    NULL,
    'Decorative storage unit',
    NULL,
    NULL,
    'DISPLAYSHELF-503',
    '{"Dining Room"}',
    '{"stylish","contemporary"}',
    false,
    42,
    'This display shelf is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1663061989677-8ca3b7fc2d16?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwZGlzcGxheSUyMHNoZWxmfGVufDB8MHx8fDE3NTEzODU2MTV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1722607380340-6df7fcaa2b81?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwZGlzcGxheSUyMHNoZWxmfGVufDB8MHx8fDE3NTEzODU2MTV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1658524202348-8bdff4d4a194?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwZGlzcGxheSUyMHNoZWxmfGVufDB8MHx8fDE3NTEzODU2MTV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1665411424360-1f4141b1c75b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwZGlzcGxheSUyMHNoZWxmfGVufDB8MHx8fDE3NTEzODU2MTV8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1705079825720-af4a62abb820?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwZGlzcGxheSUyMHNoZWxmfGVufDB8MHx8fDE3NTEzODU2MTV8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    100,
    'Fruit Bowl',
    'fruit-bowl',
    624,
    1,
    362,
    'Decorative food display',
    NULL,
    '{"Cream","Charcoal"}',
    'FRUITBOWL-9542',
    '{"Dining Room"}',
    '{"classic","affordable","contemporary","elegant","comfortable"}',
    false,
    60,
    'This fruit bowl is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1661046206814-6b37c33700f8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwZnJ1aXQlMjBib3dsfGVufDB8MHx8fDE3NTEzODU2MTZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1567980145038-eca35242bb75?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwZnJ1aXQlMjBib3dsfGVufDB8MHx8fDE3NTEzODU2MTZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1641568289003-eafe1b7e0f05?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwZnJ1aXQlMjBib3dsfGVufDB8MHx8fDE3NTEzODU2MTZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1611110089740-de7cb7b03f5b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwZnJ1aXQlMjBib3dsfGVufDB8MHx8fDE3NTEzODU2MTZ8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1680975437914-9699f5be452f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwZnJ1aXQlMjBib3dsfGVufDB8MHx8fDE3NTEzODU2MTZ8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    101,
    'Salt and Pepper',
    'salt-pepper',
    152,
    5,
    353,
    'Essential table seasonings',
    NULL,
    '{"Navy","Silver"}',
    'SALTPEPPER-7844',
    '{"Dining Room"}',
    '{"luxury","classic","comfortable","durable"}',
    true,
    66,
    'This salt and pepper is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1635492357438-66d3e442eabf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwc2FsdCUyMGFuZCUyMHBlcHBlcnxlbnwwfDB8fHwxNzUxMzg1NjE3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1609858386327-e2cc02007719?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwc2FsdCUyMGFuZCUyMHBlcHBlcnxlbnwwfDB8fHwxNzUxMzg1NjE3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1739595415308-ba632ebfbfe2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwc2FsdCUyMGFuZCUyMHBlcHBlcnxlbnwwfDB8fHwxNzUxMzg1NjE3fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1611398989422-1d2ff8f3987e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwc2FsdCUyMGFuZCUyMHBlcHBlcnxlbnwwfDB8fHwxNzUxMzg1NjE3fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    102,
    'Dining Mirror',
    'dining-mirror',
    248,
    4,
    NULL,
    'Room-expanding wall mirror',
    '{"Twin"}',
    NULL,
    'DININGMIRROR-1249',
    '{"Dining Room"}',
    '{"contemporary","affordable","elegant","durable"}',
    true,
    70,
    'This dining mirror is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1750105244320-d93c6c324743?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwbWlycm9yfGVufDB8MHx8fDE3NTEzODU2MTh8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1745514306378-cbb9eaa3a3ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwbWlycm9yfGVufDB8MHx8fDE3NTEzODU2MTh8MA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1599971284461-116b5f67e757?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwbWlycm9yfGVufDB8MHx8fDE3NTEzODU2MTh8MA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    103,
    'Corner Cabinet',
    'corner-cabinet',
    128,
    2,
    NULL,
    'Space-saving storage',
    '{"Small","Extra Large","Medium"}',
    '{"Charcoal"}',
    'CORNERCABINET-744',
    '{"Dining Room"}',
    '{"comfortable","affordable","contemporary"}',
    false,
    62,
    'This corner cabinet is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1489514327393-b96a39d2bf86?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwY29ybmVyJTIwY2FiaW5ldHxlbnwwfDB8fHwxNzUxMzg1NjE4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1669236392214-927b52cb4682?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwY29ybmVyJTIwY2FiaW5ldHxlbnwwfDB8fHwxNzUxMzg1NjE4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1697807665472-908cfe732b8e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwY29ybmVyJTIwY2FiaW5ldHxlbnwwfDB8fHwxNzUxMzg1NjE4fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1651764730070-bac6375282d9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwY29ybmVyJTIwY2FiaW5ldHxlbnwwfDB8fHwxNzUxMzg1NjE4fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    104,
    'Table Lamps',
    'dining-table-lamps',
    1587,
    5,
    NULL,
    'Buffet accent lighting',
    '{"King","Extra Large"}',
    NULL,
    'DININGTABLELAMPS-443',
    '{"Dining Room"}',
    '{"comfortable","affordable","elegant","minimalist","luxury"}',
    false,
    9,
    'This table lamps is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1623903800664-a840b8be323b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwdGFibGUlMjBsYW1wc3xlbnwwfDB8fHwxNzUxMzg1NjE5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1680210850815-3a1a9305dcbc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwdGFibGUlMjBsYW1wc3xlbnwwfDB8fHwxNzUxMzg1NjE5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1715782414430-e1f0f4df354e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwdGFibGUlMjBsYW1wc3xlbnwwfDB8fHwxNzUxMzg1NjE5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1690126671026-623dc4f8370a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwdGFibGUlMjBsYW1wc3xlbnwwfDB8fHwxNzUxMzg1NjE5fDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1718304257331-9519366b9d10?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw1fHxkaW5pbmclMjByb29tJTIwdGFibGUlMjBsYW1wc3xlbnwwfDB8fHwxNzUxMzg1NjE5fDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    105,
    'Dining Cart',
    'dining-cart',
    1522,
    1,
    134,
    'Mobile serving utility',
    NULL,
    '{"Gray"}',
    'DININGCART-2312',
    '{"Dining Room"}',
    '{"comfortable","modern","elegant","contemporary"}',
    false,
    55,
    'This dining cart is perfect for your dining room. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.',
    'Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.',
    '{"https://images.unsplash.com/photo-1628859456090-2698f238cb40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwxfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwY2FydHxlbnwwfDB8fHwxNzUxMzg1NjIwfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1679944733954-22b7020ee150?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwyfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwY2FydHxlbnwwfDB8fHwxNzUxMzg1NjIwfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1674566563790-9bac9e902756?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHwzfHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwY2FydHxlbnwwfDB8fHwxNzUxMzg1NjIwfDA&ixlib=rb-4.1.0&q=80&w=1080","https://images.unsplash.com/photo-1528121108018-743eef2e4a7a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3NzE4NTh8MHwxfHNlYXJjaHw0fHxkaW5pbmclMjByb29tJTIwZGluaW5nJTIwY2FydHxlbnwwfDB8fHwxNzUxMzg1NjIwfDA&ixlib=rb-4.1.0&q=80&w=1080"}'
  );

-- Estatísticas do seed:
-- Total de produtos inseridos: 105
-- Categorias: Bedroom, Living Room, Dining Room
-- Produtos por categoria: 35, 35, 35