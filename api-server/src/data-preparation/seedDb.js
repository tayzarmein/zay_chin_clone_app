const { getDb } = require("../database");
const products = require("./products");
const users = require("./users")

async function seedDb() { 
  const db = await getDb();

  //purge previous data
  await db.collection("products").deleteMany({});

  await db.collection("users").deleteMany({});

  //add new data
  await db.collection("products").insertMany(products);

  await db.collection("users").insertMany(users);
}

seedDb()
  .then(() => {
    console.log("db seeded");
    process.exit(0);
  })
  .catch((error) => {
    console.log(error);
    throw new Error("Error while seeding");
  });
