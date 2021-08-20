const {MongoDataSource} = require('apollo-datasource-mongodb')

class Products extends MongoDataSource {
    async getAllProducts() {
        
        //data fetching
        const products = await this.collection.find().toArray();

        //transformation
        // const newProducts = products.map((p) => {
        //     p.id = p._id
        //     delete p._id;
        //     return p;
        // })

        // console.log("products=", newProducts);
        return products;
        
    }
}

module.exports = Products