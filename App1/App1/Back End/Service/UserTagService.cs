using App1.Back_End.Model;
using App1.Back_End.Repository;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace App1.Back_End.Service
{
    public class UserTagService
    {
        private UserTagRepository _userTagRepository;

        public UserTagService(UserTagRepository userTagRepository)
        {
            _userTagRepository = userTagRepository;
        }

        public async Task CreateUserTagAsync(int userId, int tagId)
        {
            await _userTagRepository.CreateUserTagAsync(userId, tagId);
        }

        public async Task UnfollowTagAsync(int userId, int userTagId)
        {
            await _userTagRepository.UnfollowTagAsync(userId, userTagId);
        }

        public async Task<List<TagCount>> GetTopFollowedTagsAsync(int count)
        {
            return await _userTagRepository.GetTopFollowedTagsAsync(count);
        }
    }
}
