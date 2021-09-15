const {MongoDataSource} = require('apollo-datasource-mongodb')

class Users extends MongoDataSource {
    
    getAllUsers() {
        const users = this.collection.find().toArray();
        // console.log(users)
        return users;
    }
}

module.exports = Users