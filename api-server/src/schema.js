const {gql} = require('apollo-server')

const typeDefs = gql`

  type Query {
    products: [Product!]
    categories: [Category]
  }

  type Product {
      _id: ID!
      name: String!
      description: String
      priceUnit: String
      price: Int!
      image: String!
      category: String!
      subcategory: String!
  }

  type Category {
    name: String!
    products: [Product]
  }

`;
module.exports = typeDefs;