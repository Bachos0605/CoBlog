using App1.Back_End.Service;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace App1.Back_End.Controller
{
    [ApiController]
    [Route("api/userfollowblocks")]
    public class UserFollowBlockController : ControllerBase
    {
        private readonly UserFollowBlockService _userFollowBlockService;

        public UserFollowBlockController(UserFollowBlockService userFollowBlockService)
        {
            _userFollowBlockService = userFollowBlockService;
        }

        [HttpPost]
        public async Task<IActionResult> CreateUserFollowBlock(int userId, int followerId)
        {
            try
            {
                if (userId == followerId)
                    return BadRequest("userId and followerId must be different.");

                await _userFollowBlockService.CreateUserFollowBlockAsync(userId, followerId);
                return Ok("UserFollowBlock created successfully.");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error creating UserFollowBlock: {ex.Message}");
            }
        }

        [HttpPut("{userFollowBlockId}")]
        public async Task<IActionResult> UnfollowUser(int userFollowBlockId, [FromQuery] int userId)
        {
            try
            {
                await _userFollowBlockService.UnfollowUserAsync(userFollowBlockId, userId);
                return Ok("Unfollow user successful");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error unfollowing user: {ex.Message}");
            }
        }

        [HttpPut("{userFollowBlockId}")]
        public async Task<IActionResult> BlockUser(int userFollowBlockId, [FromQuery] int userId)
        {
            try
            {
                await _userFollowBlockService.BlockUserAsync(userFollowBlockId, userId);
                return Ok("Block user successful");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error blocking user: {ex.Message}");
            }
        }
    }
}
