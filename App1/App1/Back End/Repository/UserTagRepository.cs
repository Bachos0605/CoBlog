using App1.Back_End.Model;
using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using UserTag = App1.Back_End.Entity.UserTag;

namespace App1.Back_End.Repository
{
    public class UserTagRepository
    {
        private IMongoCollection<UserTag> _userTagsCollection;

        public UserTagRepository(IMongoDatabase database)
        {
            _userTagsCollection = database.GetCollection<UserTag>("User_Tag");
        }

        public async Task CreateUserTagAsync(int userId, int tagId)
        {
            var userTag = new UserTag
            {
                userTagId = await GenerateUserTagId(),
                userId = userId,
                tagId = tagId,
                status = 0
            };

            await _userTagsCollection.InsertOneAsync(userTag);
        }

        public async Task UnfollowTagAsync(int userId, int userTagId)
        {
            var filter = Builders<UserTag>.Filter.Eq(x => x.userId, userId) & Builders<UserTag>.Filter.Eq(x => x.userTagId, userTagId);
            var update = Builders<UserTag>.Update.Set(x => x.status, 1);

            await _userTagsCollection.UpdateOneAsync(filter, update);
        }

        public async Task<List<TagCount>> GetTopFollowedTagsAsync(int limit)
        {
            var groupStage = new BsonDocument("$group", new BsonDocument
            {
                { "_id", "$tagId" },
                { "Count", new BsonDocument("$sum", 1) }
            });

            var sortStage = new BsonDocument("$sort", new BsonDocument
            {
                { "Count", -1 }
            });

            var limitStage = new BsonDocument("$limit", limit);

            var projectionStage = new BsonDocument("$project", new BsonDocument
            {
                { "_id", 0 },
                { "TagId", "$_id" },
                { "Count", 1 }
            });

            var pipeline = new[] { groupStage, sortStage, limitStage, projectionStage };

            var result = await _userTagsCollection.Aggregate<TagCount>(pipeline).ToListAsync();

            return result;
        }



        private async Task<int> GenerateUserTagId()
        {
            var maxUserTag = await _userTagsCollection.Find(new BsonDocument())
                                                      .SortByDescending(ut => ut.userTagId)
                                                      .FirstOrDefaultAsync();

            if (maxUserTag != null)
            {
                return maxUserTag.userTagId + 1;
            }
            else
            {
                return 1;
            }
        }
    }
}
