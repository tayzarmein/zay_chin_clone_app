const faker = require("faker");
const { getDb } = require("../database");

async function seedDb() {
  const db = await getDb();

  const products = [];

  for (let i = 0; i < 20; i++) {
    const product = {
      name: "product_" + faker.random.word(),
      photo: faker.image.imageUrl(),
      category: {
        name: `category_${faker.random.word()}`,
      },
      subcategory: {
        name: `subcategory_${faker.random.word()}`,
      },
      price: faker.datatype.number(10000),
    };
    products.push(product);
  }


  await db.collection("products").insertMany(products);
}

seedDb()
  .then(() => console.log("seeded"))
  .catch((error) => {
    console.log(error);
    throw new Error("Error while seeding");
  });
