const {MongoDataSource} = require('apollo-datasource-mongodb')

class Users extends MongoDataSource {
    
    async getAllUsers() {
        const users = await this.collection.find().toArray();
        // console.log(users)
        return users;
    };
    
    async addSingleUser(userData) {
        const addUser = await this.collection.insertOne(userData);
        return addUser;
    };
}

module.exports = Users