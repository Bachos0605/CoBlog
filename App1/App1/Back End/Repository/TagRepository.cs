using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tag = App1.Back_End.Entity.Tag;
using App1.Back_End.Entity;

namespace App1.Back_End.Repository
{
    public class TagRepository
    {

        private UserRepository _userRepository;

        public TagRepository(IMongoDatabase database, UserRepository userRepository)
        {
            _tagsCollection = database.GetCollection<Tag>("Tag");
            _userRepository = userRepository;
        }


        private IMongoCollection<Tag> _tagsCollection;
        private IMongoCollection<UserTag> _userTagsCollection;

        public TagRepository(IMongoDatabase database)
        {
            _tagsCollection = database.GetCollection<Tag>("Tag");
        }

        public async Task CreateTagAsync(string tagName, int userId)
        {
            var user = await _userRepository.GetUserByIdAsync(userId);

            if (user == null)
            {
                throw new Exception("User not found"); // Xử lý trường hợp không tìm thấy User
            }

            var tag = new Tag
            {
                tagId = await GenerateTagId(),
                userId = userId,
                tagName = tagName,
                createDate = DateTime.Now,
                deleteDate = DateTime.MinValue,
                status = 0
            };

            await _tagsCollection.InsertOneAsync(tag);
        }

        public async Task<bool> UpdateTagAsync(string oldTagName, string newTagName)
        {
            var filter = Builders<Tag>.Filter.Eq("tagName", oldTagName);
            var update = Builders<Tag>.Update.Set("tagName", newTagName);

            var result = await _tagsCollection.UpdateOneAsync(filter, update);
            return result.ModifiedCount > 0;
        }

        public async Task<bool> UpdateTagByUserIdAsync(int userId)
        {
            var filter = Builders<Tag>.Filter.Eq("userId", userId);
            var update = Builders<Tag>.Update
                .Set("status", 1)
                .Set("deleteDate", DateTime.Now);

            var result = await _tagsCollection.UpdateManyAsync(filter, update);
            return result.ModifiedCount > 0;
        }

        public async Task<List<Tag>> SearchTagsByTagName(string tagName, int pageSize, int pageNumber)
        {
            var filter = Builders<Tag>.Filter.Regex("tagName", new BsonRegularExpression(tagName, "i"));

            var options = new FindOptions<Tag>
            {
                Projection = Builders<Tag>.Projection.Exclude("_id"),
                Sort = Builders<Tag>.Sort.Descending(t => t.tagName),
                Skip = (pageNumber - 1) * pageSize,
                Limit = pageSize
            };

            var tags = await _tagsCollection.Find(filter).Sort(options.Sort).Project(options.Projection).Skip(options.Skip).Limit(options.Limit).ToListAsync();

            return tags;
        }


        private async Task<int> GenerateTagId()
        {
            var maxTag = await _tagsCollection.Find(new BsonDocument())
                                              .SortByDescending(t => t.tagId)
                                              .FirstOrDefaultAsync();

            if (maxTag != null)
            {
                return maxTag.tagId + 1;
            }
            else
            {
                return 1;
            }
        }
    }
}