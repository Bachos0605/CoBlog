using Tag = App1.Back_End.Entity.Tag;
using App1.Back_End.Repository;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace App1.Back_End.Service
{
    public class TagService
    {
        private TagRepository _tagRepository;

        public TagService(TagRepository tagRepository)
        {
            _tagRepository = tagRepository;
        }

        public async Task CreateTagAsync(string tagName, int userId)
        {
            await _tagRepository.CreateTagAsync(tagName, userId);
        }

        public async Task<bool> UpdateTagAsync(string oldTagName, string newTagName)
        {
            return await _tagRepository.UpdateTagAsync(oldTagName, newTagName);
        }

        public async Task<bool> UpdateTagByUserIdAsync(int userId)
        {
            return await _tagRepository.UpdateTagByUserIdAsync(userId);
        }

        public async Task<List<Tag>> SearchTagsByTagName(string tagName, int pageSize, int pageNumber)
        {
            return await _tagRepository.SearchTagsByTagName(tagName, pageSize, pageNumber);
        }

    }
}