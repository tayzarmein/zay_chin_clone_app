const {gql} = require('apollo-server')

const typeDefs = gql`

  type Query {
    products: [Product!]
    categories: [Category]
    users: [User]
  }

  type Mutation {
    addUser(name: String!, phNumber: String!) : AddUserResponse!
  }

  type AddUserResponse {
    code: Int!
    success: Boolean!
    message: String!
    user: User!
  }

  type Product {
      id: ID!
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
  
  type User {
    name: String!
    phNumber: String!
  }

`;
module.exports = typeDefs;