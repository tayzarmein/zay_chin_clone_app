const chickenLeg = {
    name: "Chicken Leg",
    description: "Good for Health",
    image:
      "https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/6704/2f93554226ba33c71658c252b4b6319a-160.jpg?2021-07-12",
  
    category: "Meat & Seafood",
    subcategory: "Chicken",
    price: 1000,
    priceUnit: "EA",
  };
const chickenDrumstick = {
  name: "Chicken Drumstick",
  description: "Good for Health",
  image:
    "https://zaychin.sgp1.cdn.digitaloceanspaces.com/new/products/6690/c6fdd6be23314b8f78c41fc655842392-160.jpg?2021-07-12",
  category: "Meat & Seafood",
  subcategory: "Chicken",
  price: 1000,
  priceUnit: "EA",
};

const order1 = {
    address: "No.1, 30-Qtr",
    township: "North Dagon",
    deliveryData: "Tomorrow",
    deliveryTime: "2:00 PM",
    paymentMethod: "Cash On Delivery",
    promoCode: "",
    note: "",
    products: [
        chickenLeg,
        chickenDrumstick
    ],
    user: {
        name: "aung aung",
        phNumber: "09123456789"
    }
}

const order2 = {
    address: "No.2, 40-Qtr",
    township: "North Dagon",
    deliveryData: "Tomorrow",
    deliveryTime: "4:00 PM",
    paymentMethod: "Cash On Delivery",
    promoCode: "",
    note: "",
    products: [
        chickenLeg,
    ],
    user: {
        name: "aung aung",
        phNumber: "09123456789"
    }
}

module.exports = [order1, order2]