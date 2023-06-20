using App1.Back_End.Entity;
using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Threading.Tasks;

namespace App1.Back_End.Repository
{
    public class BlogRepository
    {
        private IMongoCollection<Blog> _blogsCollection;

        public BlogRepository(IMongoDatabase database)
        {
            _blogsCollection = database.GetCollection<Blog>("Blog");
        }

        public async Task AddBlogAsync(int userId, string blogName, string blogContent)
        {
            var nextBlogId = await GetNextBlogIdAsync();

            var blog = new Blog
            {
                BlogId = nextBlogId,
                UserId = userId,
                BlogName = blogName,
                BlogContent = blogContent,
                CreateDate = DateTime.Now,
                DeleteDate = DateTime.MinValue,
                Status = 0
            };

            await _blogsCollection.InsertOneAsync(blog);
        }

        private async Task<int> GetNextBlogIdAsync()
        {
            var maxBlog = await _blogsCollection.Find(new BsonDocument())
                .SortByDescending(b => b.BlogId)
                .FirstOrDefaultAsync();

            if (maxBlog != null)
            {
                return maxBlog.BlogId + 1;
            }
            else
            {
                return 1;
            }
        }

        public async Task<bool> UpdateBlogAsync(string blogName, string blogContent, string newBlogName, string newBlogContent)
        {
            var filter = Builders<Blog>.Filter.Eq("blogName", blogName);
            var update = Builders<Blog>.Update
                .Set("blogName", newBlogName)
                .Set("blogContent", newBlogContent);

            var result = await _blogsCollection.UpdateOneAsync(filter, update);

            return result.ModifiedCount > 0;
        }

        public async Task<bool> UpdateBlogStatusAsync(int userId)
        {
            var filter = Builders<Blog>.Filter.Eq("UserId", userId);
            var update = Builders<Blog>.Update
                .Set("Status", 1)
                .Set("DeleteDate", DateTime.Now);

            var result = await _blogsCollection.UpdateManyAsync(filter, update);

            return result.ModifiedCount > 0;
        }
    }
}
