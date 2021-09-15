const { ApolloServer } = require("apollo-server");
const typeDefs = require("./schema");
require("dotenv").config();
const resolvers = require("./resolvers");
const Products = require("./datasources/products");

const {getDb} = require("./database");
const Users = require("./datasources/users");

getDb().then((db) => {
  const server = new ApolloServer({
    typeDefs,
    resolvers,
    dataSources: () => ({
      products: new Products(db.collection('products')),
      users: new Users(db.collection('users'))
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
