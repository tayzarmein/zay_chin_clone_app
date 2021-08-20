const { getDb } = require("../database");
const products = require("./products");

async function seedDb() {
  const db = await getDb();

  //purge previous data
  await db.collection("products").deleteMany({});

  db.collection("products").insertMany(products);
}

seedDb()
  .then(() => console.log("seeded"))
  .catch((error) => {
    console.log(error);
    throw new Error("Error while seeding");
  });
