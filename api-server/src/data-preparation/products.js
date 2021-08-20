const faker = require("faker");

const beer = {
    name: "Beer",
    description: "Good for Health",
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
  }

module.exports = [beer, chickenLeg, mikkoTea];