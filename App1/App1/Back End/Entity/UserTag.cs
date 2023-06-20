using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;

namespace App1.Back_End.Entity
{
    public class UserTag
    {
        [BsonId]
        public ObjectId Id { get; set; }

        public int userTagId { get; set; }
        public int userId { get; set; }
        public int tagId { get; set; }
        public int status { get; set; }
    }
}
