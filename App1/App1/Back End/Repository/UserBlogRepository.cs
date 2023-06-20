using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Linq;
using System.Threading.Tasks;
using UserBlog = App1.Back_End.Entity.UserBlog;

namespace App1.Back_End.Repository
{
    public class UserBlogRepository
    {
        private IMongoCollection<UserBlog> _userBlogsCollection;

        public UserBlogRepository(IMongoDatabase database)
        {
            _userBlogsCollection = database.GetCollection<UserBlog>("UserBlog");
        }

        public async Task AddUserBlogAsync(int userId, int blogId)
        {
            int nextUserBlogId = await GetNextUserBlogIdAsync();

            var userBlog = new UserBlog
            {
                userBlogId = nextUserBlogId,
                userId = userId,
                blogId = blogId,
                status = 0
            };

            await _userBlogsCollection.InsertOneAsync(userBlog);
        }

        public async Task<bool> DeleteUserBlogAsync(int userId, int userBlogId)
        {
            var filter = Builders<UserBlog>.Filter.And(
                Builders<UserBlog>.Filter.Eq(u => u.userId, userId),
                Builders<UserBlog>.Filter.Eq(u => u.userBlogId, userBlogId));

            var update = Builders<UserBlog>.Update.Set(u => u.status, 1);

            var result = await _userBlogsCollection.UpdateOneAsync(filter, update);

            return result.ModifiedCount > 0;
        }

        private async Task<int> GetNextUserBlogIdAsync()
        {
            var userBlogs = await _userBlogsCollection.Find(_ => true).ToListAsync();
            if (userBlogs.Count == 0)
            {
                return 1;
            }
            else
            {
                int maxUserBlogId = userBlogs.Max(ub => ub.userBlogId);
                return maxUserBlogId + 1;
            }
        }
    }
}
