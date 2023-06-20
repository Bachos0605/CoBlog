using App1.Back_End.Repository;
using System.Threading.Tasks;

namespace App1.Back_End.Service
{
    public class UserBlogService
    {
        private readonly UserBlogRepository _userBlogRepository;

        public UserBlogService(UserBlogRepository userBlogRepository)
        {
            _userBlogRepository = userBlogRepository;
        }

        public async Task AddUserBlogAsync(int userId, int blogId)
        {
            await _userBlogRepository.AddUserBlogAsync(userId, blogId);
        }

        public async Task<bool> DeleteUserBlogAsync(int userId, int userBlogId)
        {
            return await _userBlogRepository.DeleteUserBlogAsync(userId, userBlogId);
        }
    }
}
