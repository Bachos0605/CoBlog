using App1.Back_End.Service;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System;

namespace App1.Back_End.Controller
{
    [ApiController]
    [Route("api/usertags")]
    public class UserTagController : ControllerBase
    {
        private UserTagService _userTagService;

        public UserTagController(UserTagService userTagService)
        {
            _userTagService = userTagService;
        }

        [HttpPost]
        public async Task<IActionResult> CreateUserTag([FromQuery] int userId, [FromQuery] int tagId)
        {
            try
            {
                await _userTagService.CreateUserTagAsync(userId, tagId);
                return Ok("User Tag created successfully");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error creating User Tag: {ex.Message}");
            }
        }

        [HttpPost("{userId}/unfollow")]
        public async Task<IActionResult> UnfollowTag([FromRoute] int userId, [FromQuery] int userTagId)
        {
            try
            {
                await _userTagService.UnfollowTagAsync(userId, userTagId);
                return Ok("User Tag unfollowed successfully");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error unfollowing User Tag: {ex.Message}");
            }
        }

        [HttpGet("top-followed")]
        public async Task<IActionResult> GetTopFollowedTags([FromQuery] int limit = 100)
        {
            try
            {
                var topTags = await _userTagService.GetTopFollowedTagsAsync(limit);
                return Ok(topTags);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error retrieving top followed tags: {ex.Message}");
            }
        }
    }
}
