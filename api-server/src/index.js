const { ApolloServer } = require("apollo-server");
const typeDefs = require("./schema");
const resolvers = require("./resolvers");
const Products = require("./datasources/productApi");

require("dotenv").config();

const { MongoClient } = require("mongodb");

async function getDb() {
  const client = new MongoClient(
    `mongodb://${process.env.DB_HOST}:${process.env.DB_PORT}`
  );
  await client.connect();
  const db = client.db(process.env.DB_NAME);

  console.log("db connected");
  return db;
}

getDb().then((db) => {
  const server = new ApolloServer({
    typeDefs,
    resolvers,
    dataSources: () => ({
      products: new Products(db.collection('products'))
    })
  });

  server.listen().then(() => {
    console.log(`
      🚀  Server is running!
      🔉  Listening on port 4000
      📭  Query at https://studio.apollographql.com/dev
    `);
  });
});
