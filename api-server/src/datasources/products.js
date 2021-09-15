const {MongoDataSource} = require('apollo-datasource-mongodb')

class Products extends MongoDataSource {
    async getAllProducts() {
        
        //data fetching
        const products = await this.collection.find().toArray();

        // transformation
        const newProducts = products.map((p) => {
            p.id = p._id
            delete p._id;
            return p;
        })

        // console.log("products=", newProducts);
        return newProducts;
        
    }
    async getCategoryNames() {
        const categories = await this.collection.distinct('category');

        return categories;
    }
    async findProductsByCategory(category) {
        const products = await this.collection.find({category: category.name}).toArray();
        // console.log("productsxxxx=", products);
        const newProducts = products.map((p) => {
            p.id = p._id
            delete p._id;
            return p;
        })

        return newProducts;
    }
}

module.exports = Products