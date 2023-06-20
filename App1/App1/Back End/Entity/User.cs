using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson;
using System;

namespace App1.Back_End.Entity
{
    public class User
    {
        [BsonId]
        public ObjectId Id { get; set; }

        public int userId { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string fullName { get; set; }
        public string description { get; set; }
        public string avatar { get; set; }
        public DateTime createDate { get; set; }
    }
}