const {gql} = require('apollo-server')

const typeDefs = gql`

  type Query {
    products: [Product!]
  }

  type Product {
      id: ID!
      name: String!
      price: Int!
      photo: String!
      category: Category!
      subCategory: SubCategory!
  }

  type Category {
      id: ID!
      name: String!
  }

  type SubCategory {
      id: ID!
      name: String!
  }

`;
module.exports = typeDefs;