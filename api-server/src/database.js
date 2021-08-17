const { MongoClient } = require("mongodb");
require("dotenv").config();

async function getClientConnection() {
  const client = new MongoClient(
    `mongodb://${process.env.DB_USER}:${process.env.DB_PASS}@${process.env.DB_HOST}:${process.env.DB_PORT}`
  );
  await client.connect();

  return client;
}

async function getDb() {
  const client = await getClientConnection();

  const db = client.db(process.env.DB_NAME);

  console.log("db connected");
  return db;
}

module.exports.getClientConnection = getClientConnection;
module.exports.getDb = getDb;
