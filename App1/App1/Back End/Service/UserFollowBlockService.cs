using System.Threading.Tasks;
using App1.Back_End.Repository;

namespace App1.Back_End.Service
{
    public class UserFollowBlockService
    {
        private readonly UserFollowBlockRepository _userFollowBlockRepository;

        public UserFollowBlockService(UserFollowBlockRepository userFollowBlockRepository)
        {
            _userFollowBlockRepository = userFollowBlockRepository;
        }

        public async Task CreateUserFollowBlockAsync(int userId, int followerId)
        {
            await _userFollowBlockRepository.CreateUserFollowBlockAsync(userId, followerId);
        }

        public async Task UnfollowUserAsync(int userFollowBlockId, int userId)
        {
            await _userFollowBlockRepository.UnfollowUserAsync(userFollowBlockId, userId);
        }

        public async Task BlockUserAsync(int userFollowBlockId, int userId)
        {
            await _userFollowBlockRepository.BlockUserAsync(userFollowBlockId, userId);
        }
    }
}
