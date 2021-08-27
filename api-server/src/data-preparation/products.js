const faker = require("faker");
const Products = require("../datasources/products");

//DB ထဲက category distint ကိုဆွဲထုတ်
// db.Products.distinct('category'); ["Beverage", "Food"]
const chickenLeg = {
  name: "Chicken Leg",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/6704/2f93554226ba33c71658c252b4b6319a-160.jpg?2021-07-12',
  
  category: "Meat & Seafood",
  subcategory: "Chicken",
  price: 1000,
  priceUnit: "EA",
};
const chickenDrumstick = {
  name: "Chicken Drumstick",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/6690/c6fdd6be23314b8f78c41fc655842392-160.jpg?2021-07-12',
  category: "Meat & Seafood",
  subcategory: "Chicken",
  price: 1000,
  priceUnit: "EA",
};

const porkBellySlice = {
  name: "Pork Belly Slice",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/6913/76eeaf1c978537354544ea33c607cda6-160.jpg?2021-07-12',
  category: "Meat & Seafood",
  subcategory: "Pork",
  price: 1000,
  priceUnit: "EA",
};

const porkNeck = {
  name: "Pork Neck",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/6722/99eac65b61bb46bf18fe39d96e2016e4-160.jpg?2021-07-12',
  category: "Meat & Seafood",
  subcategory: "Pork",
  price: 2000,
  priceUnit: "kg",
};
const apple = {
  name: "Apple",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/6348/7456e3f2ec89fb09c52804aebba11930-160.jpg?2021-07-12',
  category: "Fruits & Vegetables",
  subcategory: "Fruits",
  price: 500,
  priceUnit: "EA",
};
const banana = {
  name: "Banana",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/409/6295d0b28ce6020c060f6a6ce28ac25d-160.jpg?2021-07-12',
  category: "Fruits & Vegetables",
  subcategory: "Fruits",
  price: 1000,
  priceUnit: "EA",
};
const orange = {
  name: "Orange",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/5780/8a2c8fd9536f770bebbb71ee3172fef5-160.jpg?2021-07-12',
  category: "Fruits & Vegetables",
  subcategory: "Fruits",
  price: 700,
  priceUnit: "EA",
};
const carrot = {
  name: "Carrot",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/5780/8a2c8fd9536f770bebbb71ee3172fef5-160.jpg?2021-07-12',
  category: "Fruits & Vegetables",
  subcategory: "Fruits",
  price: 700,
  priceUnit: "EA",
};
const goldLabel = {
  name: "Gold Label",
  description: "Good for Health",
  image: 'https://cdn.shopify.com/s/files/1/0264/4521/7828/products/Gold_label_reserve_180x.jpg?v=1606929286',
  category: "Liquor",
  subcategory: "Whiskey",
  price: 30000,
  priceUnit: "EA",
};
const hibiki = {
  name: "Hibiki",
  description: "Good for Health",
  image: 'https://cdn.shopify.com/s/files/1/0264/4521/7828/products/Hibiki_Japnese_Whisky_180x.png?v=1606929299',
  category: "Liquor",
  subcategory: "Whiskey",
  price: 30000,
  priceUnit: "EA",
};
const glenfiddich = {
  name: "Glenfiddich",
  description: "Good for Health",
  image: 'https://cdn.shopify.com/s/files/1/0264/4521/7828/products/glenfiddich_12yo_700ml_bottle_group_5010327115115_aus_220x.jpg?v=1606929290',
  category: "Liquor",
  subcategory: "Whiskey",
  price: 30000,
  priceUnit: "EA",
};
const sunkist = {
  name: "Sunkist",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/232/94085fb6e954be378e162b9567102d84-160.jpg?2021-07-12',
  category: "Beverages & Snacks",
  subcategory: "Soft Drink",
  price: 500,
  priceUnit: "EA",
};
const dPopCola = {
  name: "D-pop Cola",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/7527/f10eb575e55ea8d69ecb2c51c01e7025-160.jpg?2021-07-12',
  category: "Beverages & Snacks",
  subcategory: "Soft Drink",
  price: 500,
  priceUnit: "EA",
};
const nescafe = {
  name: "Nescafe",
  description: "Good for Health",
  image: 'https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/210/2bb886b1c67391c9ee222352f5fe1080-160.jpg?2021-07-12',
  category: "Beverages & Snacks",
  subcategory: "Soft Drink",
  price: 800,
  priceUnit: "EA",
};


module.exports = [chickenLeg, chickenDrumstick, porkBellySlice, porkNeck, apple, banana, orange, carrot, goldLabel, hibiki, glenfiddich, sunkist, dPopCola, nescafe];
