using MongoDB.Bson;
using MongoDB.Driver;
using System.Threading.Tasks;
using App1.Back_End.Entity;
using System;

namespace App1.Back_End.Repository
{
    public class UserFollowBlockRepository
    {
        private IMongoCollection<UserFollowBlock> _userFollowBlockCollection;

        public UserFollowBlockRepository(IMongoDatabase database)
        {
            _userFollowBlockCollection = database.GetCollection<UserFollowBlock>("UserFollowBlock");
        }

        public async Task CreateUserFollowBlockAsync(int userId, int followerId)
        {
            var userFollowBlock = new UserFollowBlock
            {
                userFollowBlockId = await GenerateUserFollowBlockId(),
                userId = userId,
                followerId = followerId,
                createDate = DateTime.Now,
                status = 0
            };

            await _userFollowBlockCollection.InsertOneAsync(userFollowBlock);
        }

        public async Task UnfollowUserAsync(int userFollowBlockId, int userId)
        {
            var userFollowBlock = await _userFollowBlockCollection.Find(u => u.userFollowBlockId == userFollowBlockId).FirstOrDefaultAsync();

            if (userFollowBlock == null)
            {
                throw new Exception("UserFollowBlock not found");
            }

            if (userFollowBlock.userId != userId)
            {
                throw new Exception("Unauthorized to unfollow this user");
            }

            userFollowBlock.status = 1;

            var filter = Builders<UserFollowBlock>.Filter.Eq(u => u.userFollowBlockId, userFollowBlockId);
            await _userFollowBlockCollection.ReplaceOneAsync(filter, userFollowBlock);
        }

        public async Task BlockUserAsync(int userFollowBlockId, int userId)
        {
            var userFollowBlock = await _userFollowBlockCollection.Find(u => u.userFollowBlockId == userFollowBlockId).FirstOrDefaultAsync();

            if (userFollowBlock == null)
            {
                throw new Exception("UserFollowBlock not found");
            }

            if (userFollowBlock.userId != userId)
            {
                throw new Exception("Unauthorized to block this user");
            }

            userFollowBlock.status = 2;

            var filter = Builders<UserFollowBlock>.Filter.Eq(u => u.userFollowBlockId, userFollowBlockId);
            await _userFollowBlockCollection.ReplaceOneAsync(filter, userFollowBlock);
        }

        private async Task<int> GenerateUserFollowBlockId()
        {
            var maxUserFollowBlock = await _userFollowBlockCollection.Find(new BsonDocument())
                .SortByDescending(u => u.userFollowBlockId)
                .FirstOrDefaultAsync();

            if (maxUserFollowBlock != null)
            {
                return maxUserFollowBlock.userFollowBlockId + 1;
            }
            else
            {
                return 1;
            }
        }
    }
}
