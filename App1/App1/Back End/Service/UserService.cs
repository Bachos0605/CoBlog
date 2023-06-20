using App1.Back_End.Entity;
using App1.Back_End.Repository;
using System.Threading.Tasks;
using System;

namespace App1.Back_End.Service
{
    public class UserService
    {
        private UserRepository _userRepository;
        private TagRepository _tagRepository;

        public UserService(UserRepository userRepository, TagRepository tagRepository)
        {
            _userRepository = userRepository;
            _tagRepository = tagRepository;
        }

        public async Task<User> GetUserByIdAsync(int userId)
        {
            return await _userRepository.GetUserByIdAsync(userId);
        }

        public async Task RegisterUserAsync(string username, string password)
        {
            // Kiểm tra xem người dùng đã tồn tại hay chưa
            var existingUser = await _userRepository.GetUserByUsernameAsync(username);
            if (existingUser != null)
            {
                throw new Exception("Username is already taken");
            }

            // Đăng ký người dùng mới
            await _userRepository.RegisterUserAsync(username, password);
        }

        public async Task<bool> LoginAsync(string username, string password)
        {
            return await _userRepository.LoginAsync(username, password);
        }

        public async Task<User> GetUserInfoAsync(int userId)
        {
            return await _userRepository.GetUserInfoAsync(userId);
        }

        public async Task UpdateUserInfoAsync(int userId, string fullName, string description, string avatar)
        {
            await _userRepository.UpdateUserInfoAsync(userId, fullName, description, avatar);
        }

        public async Task<bool> ChangePasswordAsync(string username, string oldPassword, string newPassword)
        {
            return await _userRepository.ChangePasswordAsync(username, oldPassword, newPassword);
        }



    }
}
