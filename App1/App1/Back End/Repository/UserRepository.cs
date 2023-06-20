using BCrypt.Net;
using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Threading.Tasks;
using User = App1.Back_End.Entity.User;

namespace App1.Back_End.Repository
{
    public class UserRepository
    {
        private IMongoCollection<User> _usersCollection;

        public UserRepository(IMongoDatabase database)
        {
            _usersCollection = database.GetCollection<User>("User");
        }

        public async Task<User> GetUserByIdAsync(int userId)
        {
            var filter = Builders<User>.Filter.Eq("userId", userId);
            var user = await _usersCollection.Find(filter).FirstOrDefaultAsync();
            return user;
        }

        public async Task RegisterUserAsync(string username, string password)
        {
            var existingUser = await _usersCollection.Find(u => u.username == username).FirstOrDefaultAsync();

            if (existingUser != null)
            {
                throw new Exception("Username is already taken");
            }

            var newUser = new User
            {
                userId = await GetMaxUserIdAsync() + 1,
                username = username,
                password = BCrypt.Net.BCrypt.HashPassword(password),
                createDate = DateTime.Now,
                fullName = null,
                description = null,
                avatar = null
            };

            await _usersCollection.InsertOneAsync(newUser);
        }

        public async Task<bool> LoginAsync(string username, string password)
        {
            var user = await _usersCollection.Find(u => u.username == username).FirstOrDefaultAsync();

            if (user == null)
            {
                throw new Exception("Username does not exist");
            }

            bool isPasswordCorrect = BCrypt.Net.BCrypt.Verify(password, user.password);

            if (!isPasswordCorrect)
            {
                throw new Exception("Incorrect password");
            }

            return true;
        }


        public async Task<User> GetUserByUsernameAsync(string username)
        {
            var filter = Builders<User>.Filter.Eq("username", username);
            var user = await _usersCollection.Find(filter).FirstOrDefaultAsync();
            return user;
        }

        public async Task<int> GetMaxUserIdAsync()
        {
            var maxUser = await _usersCollection.Find(new BsonDocument())
                                              .SortByDescending(u => u.userId)
                                              .FirstOrDefaultAsync();

            if (maxUser != null)
            {
                return maxUser.userId;
            }
            else
            {
                return 1;
            }
        }

        public async Task<User> GetUserInfoAsync(int userId)
        {
            var filter = Builders<User>.Filter.Eq("userId", userId);
            var user = await _usersCollection.Find(filter).FirstOrDefaultAsync();
            return user;
        }

        public async Task UpdateUserInfoAsync(int userId, string fullName, string description, string avatar)
        {
            var filter = Builders<User>.Filter.Eq("userId", userId);
            var update = Builders<User>.Update
                .Set("fullName", fullName)
                .Set("description", description)
                .Set("avatar", avatar);

            await _usersCollection.UpdateOneAsync(filter, update);
        }

        public async Task<bool> ChangePasswordAsync(string username, string oldPassword, string newPassword)
        {
            var filter = Builders<User>.Filter.Eq("username", username);
            var user = await _usersCollection.Find(filter).FirstOrDefaultAsync();

            if (user == null)
            {
                throw new Exception("Username does not exist");
            }

            bool isOldPasswordValid = BCrypt.Net.BCrypt.Verify(oldPassword, user.password);

            if (!isOldPasswordValid)
            {
                throw new Exception("Incorrect old password");
            }

            var update = Builders<User>.Update.Set("password", BCrypt.Net.BCrypt.HashPassword(newPassword));

            var result = await _usersCollection.UpdateOneAsync(filter, update);
            return result.ModifiedCount > 0;
        }


    }
}
