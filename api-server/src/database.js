const { MongoClient } = require("mongodb");
require("dotenv").config();

const url = "mongodb://127.0.0.1:27017/"

async function getClientConnection() {
  const client = new MongoClient(
    // `mongodb://${process.env.DB_USER}:${process.env.DB_PASS}@${process.env.DB_HOST}:${process.env.DB_PORT}`
    url
  );
  await client.connect();

  return client;
}

async function getDb() {
  const client = await getClientConnection();

  // const db = client.db(process.env.DB_NAME);
  const db = client.db("zaychinclonedb");

  console.log("db connected");
  return db;
}

module.exports.getClientConnection = getClientConnection;
module.exports.getDb = getDb;
