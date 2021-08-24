const resolvers = {
    Query: {
        products: async (parent, args, context, info) => {
            const products = await context.dataSources.products.getAllProducts();
            return products;
        },
        categories: async (parent, args, context, info) => {
            const categories = await context.dataSources.products.getCategoryNames();
            const categoriesObjects = categories.map((c) => {
                return {
                    name: c
                }
            })
            return categoriesObjects;
        }  
    },
    Category: {
        products: async (parent, args, context, info) => {
            // console.log("parent=", parent);
            const products = await context.dataSources.products.findProductsByCategory(parent);
            return products;
        }
    },
}

module.exports = resolvers