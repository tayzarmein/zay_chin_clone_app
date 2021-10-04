const {gql} = require('apollo-server')

const typeDefs = gql`

  type Query {
    products: [Product!]
    categories: [Category]
    users: [User]
    orders: [Order]
  }

  type AddUserResponse {
    # code: Int!
    success: Boolean!
    message: String!
    user: User!
  }

  type Product {
      id: ID
      name: String
      description: String
      priceUnit: String
      price: Int
      image: String
      category: String
      subcategory: String
  }

  input ProductInput {
      name: String
      description: String
      priceUnit: String
      price: Int
      image: String
      category: String
      subcategory: String
  }

  type Category {
    name: String!
    products: [Product]
  }
  
  type User {
    id: ID
    name: String!
    phNumber: String!
  }

  input UserInput {
    name: String!
    phNumber: String!
  }

  type Order {
    id: ID
    address: String
    township: String
    deliveryData: String
    deliveryTime: String
    paymentMethod: String
    promoCode: String
    note: String
    products: [Product]
    user: User
  }

  input OrderInput {
    address: String
    township: String
    deliveryData: String
    deliveryTime: String
    paymentMethod: String
    promoCode: String
    note: String
    products: [ProductInput]
    user: UserInput
  }

  type Mutation {
    addUser(name: String!, phNumber: String!) : AddUserResponse!
    addOrder(order: OrderInput) : AddOrderResponse!
  }

  type AddOrderResponse {
    id: ID
    success: Boolean
    message: String
  }
`;
module.exports = typeDefs;