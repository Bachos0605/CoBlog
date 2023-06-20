using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;

namespace App1.Back_End.Entity
{
    public class UserFollowBlock
    {
        [BsonId]
        public ObjectId Id { get; set; }

        public int userFollowBlockId { get; set; }
        public int userId { get; set; }
        public int followerId { get; set; }
        public DateTime createDate { get; set; }
        public int status { get; set; }
    }
}

