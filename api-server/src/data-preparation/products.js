const faker = require("faker");
const Products = require("../datasources/products");

//DB ထဲက category distint ကိုဆွဲထုတ်
// db.Products.distinct('category'); ["Beverage", "Food"]
const beer = {
  name: "Heiniken Beer",
  description: "Good for Health",
  image: faker.image.imageUrl(),
  category: "Beverage",
  subcategory: "Liqour",
  price: 1000,
  priceUnit: "EA",
};
const ruby = {
  name: "Ruby Cigeratte",
  description: "Good for Health",
  image: faker.image.imageUrl(),
  category: "Other",
  subcategory: "Tobacco",
  price: 1000,
  priceUnit: "EA",
};

const wine = {
  name: "Tiger Beer",
  description: "Bla Bla Bla",
  image: faker.image.imageUrl(),
  category: "Beverage",
  subcategory: "Liqour",
  price: 1000,
  priceUnit: "EA",
};

const chickenLeg = {
  name: "ChickenLeg",
  description: "To eat",
  image: faker.image.imageUrl(),
  category: "Food",
  subcategory: "Chicken Parts",
  price: 500,
  priceUnit: "kg",
};
const mikkoTea = {
  name: "MikkoTea",
  description: "Very good mikko tea",
  image: faker.image.imageUrl(),
  category: "Food",
  subcategory: "Drink",
  price: 100,
  priceUnit: "EA",
};

module.exports = [beer, chickenLeg, mikkoTea, wine, ruby];
