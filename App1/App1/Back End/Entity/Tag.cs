using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson;
using System;

namespace App1.Back_End.Entity
{
    public class Tag
    {
        [BsonId]
        public ObjectId Id { get; set; }

        public int tagId { get; set; }
        public int userId { get; set; }
        public string tagName { get; set; }
        public DateTime createDate { get; set; }
        public DateTime deleteDate { get; set; }
        public int status { get; set; }
    }
}