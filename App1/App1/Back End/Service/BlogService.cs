using App1.Back_End.Entity;
using App1.Back_End.Repository;
using MongoDB.Driver;
using System.Threading.Tasks;

namespace App1.Back_End.Service
{
    public class BlogService
    {
        private BlogRepository _blogRepository;

        public BlogService(BlogRepository blogRepository)
        {
            _blogRepository = blogRepository;
        }

        public async Task AddBlogAsync(int userId, string blogName, string blogContent)
        {
            await _blogRepository.AddBlogAsync(userId, blogName, blogContent);
        }

        public async Task<bool> UpdateBlogAsync(string blogName, string blogContent, string newBlogName, string newBlogContent)
        {
            return await _blogRepository.UpdateBlogAsync(blogName, blogContent, newBlogName, newBlogContent);
        }

        public async Task<bool> UpdateBlogStatusAsync(int userId)
        {
            return await _blogRepository.UpdateBlogStatusAsync(userId);
        }
    }
}
