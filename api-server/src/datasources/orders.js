const {MongoDataSource} = require('apollo-datasource-mongodb');

class Orders extends MongoDataSource {

    async getAllOrders () {
        const orders = await this.collection.find().toArray();
        // console.log(orders);
        const listOfOrders = orders.map((order) => {
          order.id = order._id
          return order;
        })
        return listOfOrders;
    }

    getProductsFromOrder (order) {
        // console.log('listofProducts=', order.products)
        const listOfProducts = order.products;
        return listOfProducts;
    }

    getUserFromOrder (order) {
        const orderUser = order.user;
        return {
            name: orderUser.name,
            phNumber: orderUser.phNumber
        }
    }
    async addInputOrder (inputOrder) {
        const addOrder = await this.collection.insertOne(inputOrder.order);
        return addOrder;
    }
}

module.exports = Orders;