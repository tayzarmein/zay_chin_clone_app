const { getDb } = require("../database");
const products = require("./products");
const users = require("./users")
const orders = require("./orders");

async function seedDb() { 
  const db = await getDb();

  //purge previous data
  await db.collection("products").deleteMany({});

  await db.collection("users").deleteMany({});

  await db.collection("orders").deleteMany({});

  //add new data
  await db.collection("products").insertMany(products);

  await db.collection("users").insertMany(users);

  await db.collection("orders").insertMany(orders);
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
