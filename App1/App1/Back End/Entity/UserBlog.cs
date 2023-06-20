using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson;
using System;

namespace App1.Back_End.Entity
{
    public class UserBlog
    {
        [BsonId]
        public ObjectId Id { get; set; }

        public int userBlogId { get; set; }
        public int userId { get; set; }
        public int blogId { get; set; }
        public int status { get; set; }
    }
}
