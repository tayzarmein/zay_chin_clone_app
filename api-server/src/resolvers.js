const resolvers = {
    Query: {
        products: async (parent, args, context, info) => {
            const products = await context.dataSources.products.getAllProducts();
            return products;
        }
        
    }
}

module.exports = resolvers