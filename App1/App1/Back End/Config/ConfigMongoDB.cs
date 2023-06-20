using MongoDB.Driver;

namespace App1.Back_End.Config
{
    public class ConfigMongoDB
    {
        private IMongoDatabase _database;

        public ConfigMongoDB()
        {
            string connectionString = "mongodb://localhost:27017/";
            string databaseName = "CoBlogDatabase";

            var client = new MongoClient(connectionString);
            _database = client.GetDatabase(databaseName);
        }

        public IMongoCollection<T> GetCollection<T>(string collectionName)
        {
            return _database.GetCollection<T>(collectionName);
        }
    }
}