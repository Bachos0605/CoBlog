using App1.Back_End.Service;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace App1.Back_End.Controller
{
    [ApiController]
    [Route("api/userblogs")]
    public class UserBlogController : ControllerBase
    {
        private UserBlogService _userBlogService;

        public UserBlogController(UserBlogService userBlogService)
        {
            _userBlogService = userBlogService;
        }

        [HttpPost]
        public async Task<IActionResult> AddUserBlog(int userId, int blogId)
        {
            try
            {
                await _userBlogService.AddUserBlogAsync(userId, blogId);
                return Ok("UserBlog added successfully.");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred: {ex.Message}");
            }
        }

        [HttpPut("{userId}/{userBlogId}")]
        public async Task<IActionResult> DeleteUserBlog(int userId, int userBlogId)
        {
            try
            {
                bool deleted = await _userBlogService.DeleteUserBlogAsync(userId, userBlogId);

                if (deleted)
                    return Ok("UserBlog deleted successfully.");
                else
                    return NotFound("UserBlog not found.");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error deleting UserBlog: {ex.Message}");
            }
        }
    }
}
