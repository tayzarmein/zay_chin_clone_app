const {gql} = require('apollo-server')

const typeDefs = gql`

  type Query {
    products: [Product!]
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

`;
module.exports = typeDefs;