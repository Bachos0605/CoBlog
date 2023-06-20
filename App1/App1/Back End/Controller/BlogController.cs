using App1.Back_End.Service;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace App1.Back_End.Controller
{
    [ApiController]
    [Route("api/blogs")]
    public class BlogController : ControllerBase
    {
        private BlogService _blogService;

        public BlogController(BlogService blogService)
        {
            _blogService = blogService;
        }

        [HttpPost]
        public async Task<IActionResult> AddBlog(int userId, string blogName, string blogContent)
        {
            try
            {
                await _blogService.AddBlogAsync(userId, blogName, blogContent);
                return Ok("Blog added successfully.");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred: {ex.Message}");
            }
        }

        [HttpPut("{blogName}")]
        public async Task<IActionResult> UpdateBlog(string blogName, string blogContent, string newBlogName, string newBlogContent)
        {
            try
            {
                var result = await _blogService.UpdateBlogAsync(blogName, blogContent, newBlogName, newBlogContent);
                if (result)
                {
                    return Ok("Blog updated successfully");
                }
                else
                {
                    return NotFound("Blog not found");
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPut("{userId}")]
        public async Task<IActionResult> UpdateBlogStatus(int userId)
        {
            try
            {
                var result = await _blogService.UpdateBlogStatusAsync(userId);
                if (result)
                {
                    return Ok("Blog status updated successfully");
                }
                else
                {
                    return NotFound("User or blog not found");
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
