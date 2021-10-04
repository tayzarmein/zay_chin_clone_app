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
        },
        users: async (parent, args, context, info) => {
            const users = await context.dataSources.users.getAllUsers();
            const usersObjects = users.map((user) => {
                return {
                    id: user._id,
                    name: user.name,
                    phNumber: user.phNumber
                }
            })
            return usersObjects;
        },
        orders: async (parent, args, context, info) => {
            const orders = await context.dataSources.orders.getAllOrders();
            // console.log('orders', orders);
            return orders;
        }
    },
    Category: {
        products: async (parent, args, context, info) => {
            // console.log("parent=", parent);
            const products = await context.dataSources.products.findProductsByCategory(parent);
            return products;
        }
    },

    Order: {
        products: (parent, args, context, info) => {
            //    console.log('parent=', parent)
            const products = context.dataSources.orders.getProductsFromOrder(parent);
            return products;
        }
    },

    Order: {
        user: (parent, args, context, info) => {
            // console.log('parent=', parent)
            const user = context.dataSources.orders.getUserFromOrder(parent);
            return user;
        }
    },

    Mutation: {
        addUser: async (parent, args, context, info) => {
            const addedUser = await context.dataSources.users.addSingleUser(args);
            return {
                // code: 200,
                // success: true,
                user: {
                    id: addedUser.insertedId,
                    name: args.name,
                    phNumber: args.phNumber
                },
                message: "User Successfully Added",
                success: addedUser.acknowledged,

            }
        },
        addOrder: async (parent, args, context, info) => {
            const inputtedOrder = await context.dataSources.orders.addInputOrder(args);
            return {
                id: inputtedOrder.insertedId,
                success: inputtedOrder.acknowledged,
                message: "Order Successfully Added"
            }

        }
    }
}

module.exports = resolvers