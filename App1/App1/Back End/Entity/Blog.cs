using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson;
using System;

namespace App1.Back_End.Entity
{
    public class Blog
    {
        [BsonId]
        public ObjectId Id { get; set; }

        public int BlogId { get; set; }
        public int UserId { get; set; }
        public string BlogName { get; set; }
        public string BlogContent { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime DeleteDate { get; set; }
        public int Status { get; set; }
    }
}


