const axios = require("axios");
const fs = require("fs");

// Configuração da API do Unsplash
const UNSPLASH_ACCESS_KEY = ""; // Adicione sua chave da API
const UNSPLASH_BASE_URL = "https://api.unsplash.com";

// Dados expandidos dos produtos por categoria (30+ produtos cada)
const productData = {
  Bedroom: [
    {
      name: "Modern Platform Bed",
      alias: "modern-platform-bed",
      smalldescription: "Sleek and minimalist platform bed",
    },
    {
      name: "Luxury Mattress",
      alias: "luxury-mattress",
      smalldescription: "Premium comfort memory foam mattress",
    },
    {
      name: "Wooden Nightstand",
      alias: "wooden-nightstand",
      smalldescription: "Elegant bedside table with storage",
    },
    // {
    //   name: "Velvet Armchair",
    //   alias: "velvet-armchair",
    //   smalldescription: "Comfortable reading chair",
    // },
    // {
    //   name: "Mirrored Dresser",
    //   alias: "mirrored-dresser",
    //   smalldescription: "Stylish storage solution",
    // },
    // {
    //   name: "Pendant Light",
    //   alias: "bedroom-pendant-light",
    //   smalldescription: "Modern hanging light fixture",
    // },
    // {
    //   name: "Area Rug",
    //   alias: "bedroom-area-rug",
    //   smalldescription: "Soft and cozy floor covering",
    // },
    // {
    //   name: "Blackout Curtains",
    //   alias: "blackout-curtains",
    //   smalldescription: "Light-blocking window treatment",
    // },
    // {
    //   name: "Memory Foam Pillow",
    //   alias: "memory-foam-pillow",
    //   smalldescription: "Ergonomic sleep support",
    // },
    // {
    //   name: "Bed Frame",
    //   alias: "bed-frame",
    //   smalldescription: "Sturdy metal bed foundation",
    // },
    // {
    //   name: "Wardrobe",
    //   alias: "wardrobe",
    //   smalldescription: "Spacious clothing storage",
    // },
    // {
    //   name: "Vanity Table",
    //   alias: "vanity-table",
    //   smalldescription: "Elegant makeup station",
    // },
    // {
    //   name: "Chest of Drawers",
    //   alias: "chest-drawers",
    //   smalldescription: "Multi-drawer storage unit",
    // },
    // {
    //   name: "Bedside Lamp",
    //   alias: "bedside-lamp",
    //   smalldescription: "Ambient reading light",
    // },
    // {
    //   name: "Throw Blanket",
    //   alias: "throw-blanket",
    //   smalldescription: "Cozy bedroom accent",
    // },
    // {
    //   name: "Wall Mirror",
    //   alias: "wall-mirror",
    //   smalldescription: "Decorative bedroom mirror",
    // },
    // {
    //   name: "Ottoman Storage",
    //   alias: "ottoman-storage",
    //   smalldescription: "Multi-functional seating",
    // },
    // {
    //   name: "Ceiling Fan",
    //   alias: "ceiling-fan",
    //   smalldescription: "Air circulation and lighting",
    // },
    // {
    //   name: "Headboard",
    //   alias: "headboard",
    //   smalldescription: "Upholstered bed accent",
    // },
    // {
    //   name: "Jewelry Box",
    //   alias: "jewelry-box",
    //   smalldescription: "Elegant accessory storage",
    // },
    // {
    //   name: "Floor Mirror",
    //   alias: "floor-mirror",
    //   smalldescription: "Full-length dressing mirror",
    // },
    // {
    //   name: "Bedding Set",
    //   alias: "bedding-set",
    //   smalldescription: "Complete sheet and pillow set",
    // },
    // {
    //   name: "Accent Chair",
    //   alias: "bedroom-accent-chair",
    //   smalldescription: "Stylish seating option",
    // },
    // {
    //   name: "Table Lamp",
    //   alias: "bedroom-table-lamp",
    //   smalldescription: "Decorative lighting",
    // },
    // {
    //   name: "Storage Bench",
    //   alias: "storage-bench",
    //   smalldescription: "Seating with hidden storage",
    // },
    // {
    //   name: "Wall Sconce",
    //   alias: "wall-sconce",
    //   smalldescription: "Mounted accent lighting",
    // },
    // {
    //   name: "Comforter",
    //   alias: "comforter",
    //   smalldescription: "Warm and fluffy bedding",
    // },
    // {
    //   name: "Shoe Rack",
    //   alias: "shoe-rack",
    //   smalldescription: "Organized footwear storage",
    // },
    // {
    //   name: "Decorative Pillow",
    //   alias: "decorative-pillow",
    //   smalldescription: "Accent bedroom pillow",
    // },
    // {
    //   name: "Alarm Clock",
    //   alias: "alarm-clock",
    //   smalldescription: "Stylish bedside timepiece",
    // },
    // {
    //   name: "Laundry Hamper",
    //   alias: "laundry-hamper",
    //   smalldescription: "Clothes storage basket",
    // },
    // {
    //   name: "Room Divider",
    //   alias: "room-divider",
    //   smalldescription: "Privacy screen solution",
    // },
    // {
    //   name: "Mattress Topper",
    //   alias: "mattress-topper",
    //   smalldescription: "Extra comfort layer",
    // },
    // {
    //   name: "Bed Canopy",
    //   alias: "bed-canopy",
    //   smalldescription: "Romantic bedroom accent",
    // },
    // {
    //   name: "Closet Organizer",
    //   alias: "closet-organizer",
    //   smalldescription: "Space-saving storage system",
    // },
  ],
  "Living Room": [
    {
      name: "Sectional Sofa",
      alias: "sectional-sofa",
      smalldescription: "Spacious L-shaped seating",
    },
    {
      name: "Coffee Table",
      alias: "coffee-table",
      smalldescription: "Central living room table",
    },
    {
      name: "TV Stand",
      alias: "tv-stand",
      smalldescription: "Modern entertainment center",
    },
    // {
    //   name: "Floor Lamp",
    //   alias: "floor-lamp",
    //   smalldescription: "Ambient lighting solution",
    // },
    // {
    //   name: "Bookshelf",
    //   alias: "bookshelf",
    //   smalldescription: "Stylish storage for books",
    // },
    // {
    //   name: "Throw Pillows",
    //   alias: "throw-pillows",
    //   smalldescription: "Decorative accent pillows",
    // },
    // {
    //   name: "Wall Art",
    //   alias: "wall-art",
    //   smalldescription: "Beautiful room decoration",
    // },
    // {
    //   name: "Side Table",
    //   alias: "side-table",
    //   smalldescription: "Convenient accent table",
    // },
    // {
    //   name: "Recliner Chair",
    //   alias: "recliner-chair",
    //   smalldescription: "Comfortable relaxation seating",
    // },
    // {
    //   name: "Entertainment Unit",
    //   alias: "entertainment-unit",
    //   smalldescription: "Media storage solution",
    // },
    // {
    //   name: "Area Rug",
    //   alias: "living-area-rug",
    //   smalldescription: "Room-defining floor covering",
    // },
    // {
    //   name: "Loveseat",
    //   alias: "loveseat",
    //   smalldescription: "Compact two-seater sofa",
    // },
    // {
    //   name: "Console Table",
    //   alias: "console-table",
    //   smalldescription: "Narrow accent table",
    // },
    // {
    //   name: "Chandelier",
    //   alias: "living-chandelier",
    //   smalldescription: "Statement ceiling light",
    // },
    // {
    //   name: "Ottoman",
    //   alias: "ottoman",
    //   smalldescription: "Versatile footrest and seating",
    // },
    // {
    //   name: "Curtains",
    //   alias: "living-curtains",
    //   smalldescription: "Window treatment panels",
    // },
    // {
    //   name: "Accent Cabinet",
    //   alias: "accent-cabinet",
    //   smalldescription: "Decorative storage piece",
    // },
    // {
    //   name: "Floor Cushions",
    //   alias: "floor-cushions",
    //   smalldescription: "Casual seating options",
    // },
    // {
    //   name: "Wall Shelves",
    //   alias: "wall-shelves",
    //   smalldescription: "Floating display storage",
    // },
    // {
    //   name: "Sofa Bed",
    //   alias: "sofa-bed",
    //   smalldescription: "Convertible seating and sleeping",
    // },
    // {
    //   name: "Armchair",
    //   alias: "armchair",
    //   smalldescription: "Classic single seating",
    // },
    // {
    //   name: "TV Mount",
    //   alias: "tv-mount",
    //   smalldescription: "Wall-mounted TV bracket",
    // },
    // {
    //   name: "Plant Stand",
    //   alias: "plant-stand",
    //   smalldescription: "Decorative plant display",
    // },
    // {
    //   name: "Magazine Rack",
    //   alias: "magazine-rack",
    //   smalldescription: "Reading material organizer",
    // },
    // {
    //   name: "Fireplace Screen",
    //   alias: "fireplace-screen",
    //   smalldescription: "Safety and style for fireplace",
    // },
    // {
    //   name: "Bean Bag",
    //   alias: "bean-bag",
    //   smalldescription: "Casual comfortable seating",
    // },
    // {
    //   name: "Nesting Tables",
    //   alias: "nesting-tables",
    //   smalldescription: "Space-saving table set",
    // },
    // {
    //   name: "Floor Vase",
    //   alias: "floor-vase",
    //   smalldescription: "Decorative accent piece",
    // },
    // {
    //   name: "Sofa Table",
    //   alias: "sofa-table",
    //   smalldescription: "Behind-sofa accent table",
    // },
    // {
    //   name: "Ceiling Light",
    //   alias: "ceiling-light",
    //   smalldescription: "Overhead room illumination",
    // },
    // {
    //   name: "Storage Ottoman",
    //   alias: "storage-ottoman",
    //   smalldescription: "Hidden storage seating",
    // },
    // {
    //   name: "Picture Frames",
    //   alias: "picture-frames",
    //   smalldescription: "Photo display collection",
    // },
    // {
    //   name: "Throw Blanket",
    //   alias: "living-throw-blanket",
    //   smalldescription: "Cozy accent covering",
    // },
    // {
    //   name: "Bar Cart",
    //   alias: "living-bar-cart",
    //   smalldescription: "Mobile entertaining station",
    // },
    // {
    //   name: "Accent Mirror",
    //   alias: "accent-mirror",
    //   smalldescription: "Decorative wall mirror",
    // },
  ],
  "Dining Room": [
    {
      name: "Dining Table",
      alias: "dining-table",
      smalldescription: "Elegant family dining table",
    },
    {
      name: "Dining Chairs",
      alias: "dining-chairs",
      smalldescription: "Comfortable seating set",
    },
    {
      name: "China Cabinet",
      alias: "china-cabinet",
      smalldescription: "Display and storage cabinet",
    },
    // {
    //   name: "Chandelier",
    //   alias: "dining-chandelier",
    //   smalldescription: "Statement lighting fixture",
    // },
    // {
    //   name: "Bar Cart",
    //   alias: "dining-bar-cart",
    //   smalldescription: "Mobile serving station",
    // },
    // {
    //   name: "Buffet Table",
    //   alias: "buffet-table",
    //   smalldescription: "Serving and storage furniture",
    // },
    // {
    //   name: "Table Runner",
    //   alias: "table-runner",
    //   smalldescription: "Decorative table accent",
    // },
    // {
    //   name: "Dining Bench",
    //   alias: "dining-bench",
    //   smalldescription: "Alternative seating option",
    // },
    // {
    //   name: "Sideboard",
    //   alias: "sideboard",
    //   smalldescription: "Dining room storage cabinet",
    // },
    // {
    //   name: "Wine Rack",
    //   alias: "wine-rack",
    //   smalldescription: "Bottle storage and display",
    // },
    // {
    //   name: "Serving Tray",
    //   alias: "serving-tray",
    //   smalldescription: "Elegant food presentation",
    // },
    // {
    //   name: "Placemats",
    //   alias: "placemats",
    //   smalldescription: "Table protection and style",
    // },
    // {
    //   name: "Centerpiece",
    //   alias: "centerpiece",
    //   smalldescription: "Table decoration focal point",
    // },
    // {
    //   name: "Dining Set",
    //   alias: "dining-set",
    //   smalldescription: "Complete table and chairs",
    // },
    // {
    //   name: "Bar Stools",
    //   alias: "bar-stools",
    //   smalldescription: "Counter height seating",
    // },
    // {
    //   name: "Hutch",
    //   alias: "hutch",
    //   smalldescription: "Display cabinet with shelving",
    // },
    // {
    //   name: "Pendant Lights",
    //   alias: "pendant-lights",
    //   smalldescription: "Hanging dining lights",
    // },
    // {
    //   name: "Table Cloth",
    //   alias: "table-cloth",
    //   smalldescription: "Protective table covering",
    // },
    // {
    //   name: "Napkin Rings",
    //   alias: "napkin-rings",
    //   smalldescription: "Elegant table accessories",
    // },
    // {
    //   name: "Candle Holders",
    //   alias: "candle-holders",
    //   smalldescription: "Ambient lighting decor",
    // },
    // {
    //   name: "Serving Bowl",
    //   alias: "serving-bowl",
    //   smalldescription: "Food presentation dish",
    // },
    // {
    //   name: "Wall Art",
    //   alias: "dining-wall-art",
    //   smalldescription: "Dining room decoration",
    // },
    // {
    //   name: "Floor Lamp",
    //   alias: "dining-floor-lamp",
    //   smalldescription: "Additional room lighting",
    // },
    // {
    //   name: "Area Rug",
    //   alias: "dining-area-rug",
    //   smalldescription: "Under-table floor covering",
    // },
    // {
    //   name: "Server Cabinet",
    //   alias: "server-cabinet",
    //   smalldescription: "Dining storage solution",
    // },
    // {
    //   name: "Lazy Susan",
    //   alias: "lazy-susan",
    //   smalldescription: "Rotating serving platform",
    // },
    // {
    //   name: "Chair Cushions",
    //   alias: "chair-cushions",
    //   smalldescription: "Comfort seat padding",
    // },
    // {
    //   name: "Wall Sconces",
    //   alias: "dining-wall-sconces",
    //   smalldescription: "Mounted accent lighting",
    // },
    // {
    //   name: "Display Shelf",
    //   alias: "display-shelf",
    //   smalldescription: "Decorative storage unit",
    // },
    // {
    //   name: "Fruit Bowl",
    //   alias: "fruit-bowl",
    //   smalldescription: "Decorative food display",
    // },
    // {
    //   name: "Salt and Pepper",
    //   alias: "salt-pepper",
    //   smalldescription: "Essential table seasonings",
    // },
    // {
    //   name: "Dining Mirror",
    //   alias: "dining-mirror",
    //   smalldescription: "Room-expanding wall mirror",
    // },
    // {
    //   name: "Corner Cabinet",
    //   alias: "corner-cabinet",
    //   smalldescription: "Space-saving storage",
    // },
    // {
    //   name: "Table Lamps",
    //   alias: "dining-table-lamps",
    //   smalldescription: "Buffet accent lighting",
    // },
    // {
    //   name: "Dining Cart",
    //   alias: "dining-cart",
    //   smalldescription: "Mobile serving utility",
    // },
  ],
};

// Cores e tamanhos disponíveis
const colors = [
  "Black",
  "White",
  "Brown",
  "Gray",
  "Beige",
  "Navy",
  "Cream",
  "Charcoal",
  "Gold",
  "Silver",
];
const sizes = [
  "Small",
  "Medium",
  "Large",
  "Extra Large",
  "King",
  "Queen",
  "Twin",
];

// Função para buscar imagens do Unsplash
async function fetchUnsplashImages(query, count) {
  try {
    const response = await axios.get(`${UNSPLASH_BASE_URL}/search/photos`, {
      params: {
        query: query,
        per_page: count,
        orientation: "landscape",
      },
      headers: {
        Authorization: `Client-ID ${UNSPLASH_ACCESS_KEY}`,
      },
    });

    return response.data.results.map((photo) => photo.urls.regular);
  } catch (error) {
    console.error(`Erro ao buscar imagens para "${query}":`, error.message);
    // Fallback para imagens placeholder
    return Array.from(
      { length: count },
      (_, i) =>
        `https://placehold.co/800x600/cccccc/333333?text=${encodeURIComponent(
          query
        )}+${i + 1}`
    );
  }
}

// Função para gerar dados aleatórios
function getRandomElements(array, min, max) {
  const count = Math.floor(Math.random() * (max - min + 1)) + min;
  const shuffled = [...array].sort(() => 0.5 - Math.random());
  return shuffled.slice(0, count);
}

function generateRandomPrice() {
  return Math.floor(Math.random() * 2000) + 50; // Entre $50 e $2050
}

function generateRandomReview() {
  return Math.floor(Math.random() * 5) + 1; // Entre 1 e 5
}

function generateRandomDiscount() {
  return Math.floor(Math.random() * 71); // Entre 0% e 70%
}

function generateSKU(alias) {
  const randomNum = Math.floor(Math.random() * 10000);
  return `${alias.toUpperCase().replace(/-/g, "")}-${randomNum}`;
}

// Função para escapar strings SQL
function escapeSqlString(str) {
  return str.replace(/'/g, "''");
}

// Função para converter array para formato PostgreSQL
function arrayToPostgresArray(arr) {
  if (!arr || arr.length === 0) return "NULL";
  const escapedItems = arr.map((item) => `"${escapeSqlString(item)}"`);
  return `'{${escapedItems.join(",")}}'`;
}

// Função principal para gerar SQL
async function generateSeedSQL() {
  try {
    console.log("Iniciando geração do SQL seed...");

    let sqlStatements = [];

    // Adicionar comando para limpar tabela (opcional)
    sqlStatements.push(
      "-- Limpar produtos existentes (descomente se necessário)"
    );
    sqlStatements.push("-- DELETE FROM product;");
    sqlStatements.push("-- ALTER SEQUENCE product_id_seq RESTART WITH 1;");
    sqlStatements.push("");

    let productId = 1;

    for (const category in productData) {
      if (productData.hasOwnProperty(category)) {
        const products = productData[category];
        console.log(
          `Processando categoria: ${category} (${products.length} produtos)`
        );

        sqlStatements.push(`-- Produtos da categoria: ${category}`);

        for (const productInfo of products) {
          // Número aleatório de imagens (3-5)
          const imageCount = Math.floor(Math.random() * 3) + 3;

          // Buscar imagens do Unsplash
          const searchQuery = `${category.toLowerCase()} ${productInfo.name.toLowerCase()}`;
          const images = await fetchUnsplashImages(searchQuery, imageCount);

          // Gerar dados do produto
          const price = generateRandomPrice();
          const review = generateRandomReview();
          const customreviews =
            Math.random() > 0.3 ? Math.floor(Math.random() * 500) + 10 : null;
          const size =
            Math.random() > 0.4 ? getRandomElements(sizes, 1, 3) : null;
          const color =
            Math.random() > 0.2 ? getRandomElements(colors, 1, 4) : null;
          const sku = generateSKU(productInfo.alias);
          const tags = getRandomElements(
            [
              "modern",
              "classic",
              "luxury",
              "affordable",
              "comfortable",
              "stylish",
              "durable",
              "elegant",
              "minimalist",
              "contemporary",
            ],
            2,
            5
          );
          const isNew = Math.random() > 0.7; // 30% chance de ser novo
          const discount = generateRandomDiscount();
          const description = `This ${productInfo.name.toLowerCase()} is perfect for your ${category.toLowerCase()}. Crafted with attention to detail and designed for both style and functionality. Made from high-quality materials that ensure durability and long-lasting beauty.`;
          const info = `Dimensions and specifications vary by model. Please check product details for specific measurements. Assembly may be required. Warranty included.`;

          // Gerar SQL INSERT
          const insertSQL = `INSERT INTO product (
    id, name, alias, price, review, customreviews, smalldescription, 
    size, color, sku, category, tags, "new", descount, description, info, image
  ) VALUES (
    ${productId},
    '${escapeSqlString(productInfo.name)}',
    '${escapeSqlString(productInfo.alias)}',
    ${price},
    ${review},
    ${customreviews || "NULL"},
    '${escapeSqlString(productInfo.smalldescription)}',
    ${arrayToPostgresArray(size)},
    ${arrayToPostgresArray(color)},
    '${escapeSqlString(sku)}',
    '{"${category}"}',
    ${arrayToPostgresArray(tags)},
    ${isNew},
    ${discount},
    '${escapeSqlString(description)}',
    '${escapeSqlString(info)}',
    ${arrayToPostgresArray(images)}
  );`;

          sqlStatements.push(insertSQL);
          sqlStatements.push("");

          productId++;

          // Pequena pausa para não sobrecarregar a API
          await new Promise((resolve) => setTimeout(resolve, 200));
        }
      }
    }

    // Adicionar estatísticas no final
    const totalProducts = productId - 1;
    sqlStatements.push("-- Estatísticas do seed:");
    sqlStatements.push(`-- Total de produtos inseridos: ${totalProducts}`);
    sqlStatements.push(`-- Categorias: ${Object.keys(productData).join(", ")}`);
    sqlStatements.push(
      `-- Produtos por categoria: ${Object.values(productData)
        .map((p) => p.length)
        .join(", ")}`
    );

    // Salvar arquivo SQL
    const sqlContent = sqlStatements.join("\n");

    return {
      sql: sqlContent,
      stats: {
        totalProducts,
        categories: Object.keys(productData),
        productsPerCategory: Object.fromEntries(
          Object.entries(productData).map(([cat, prods]) => [cat, prods.length])
        ),
      },
    };
  } catch (error) {
    console.error("Erro durante a geração do SQL:", error);
    throw error;
  }
}

// Função principal
async function main() {
  try {
    console.log("🚀 Iniciando geração do seed SQL...");

    const result = await generateSeedSQL();

    fs.writeFileSync("seed-products.sql", result.sql);

    console.log("\n✅ Arquivo SQL gerado com sucesso!");
    console.log("\n📊 ESTATÍSTICAS:");
    console.log(`Total de produtos: ${result.stats.totalProducts}`);
    console.log("Produtos por categoria:");
    Object.entries(result.stats.productsPerCategory).forEach(([cat, count]) => {
      console.log(`  - ${cat}: ${count} produtos`);
    });
    console.log("\n📁 Arquivo salvo como: seed-products.sql");
    console.log("\n🔧 Para executar no PostgreSQL:");
    console.log("psql -d seu_banco -f seed-products.sql");
  } catch (error) {
    console.error("❌ Erro:", error);
  }
}

// Executar se for o arquivo principal
if (require.main === module) {
  main();
}
