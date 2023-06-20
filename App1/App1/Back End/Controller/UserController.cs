using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using App1.Back_End.Service;
using System;

namespace App1.Back_End.Controllers
{
    [ApiController]
    [Route("api/users")]
    public class UserController : ControllerBase
    {
        private UserService _userService;

        public UserController(UserService userService)
        {
            _userService = userService;
        }

        [HttpGet("{_userId}")]
        public async Task<IActionResult> GetUserById(int userId)
        {
            var user = await _userService.GetUserByIdAsync(userId);
            if (user != null)
            {
                return Ok(user);
            }
            else
            {
                return NotFound();
            }
        }

        [HttpPost("register")]
        public async Task<IActionResult> RegisterUser(string username, string password)
        {
            try
            {
                await _userService.RegisterUserAsync(username, password);
                return Ok("User registered successfully");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(string username, string password)
        {
            try
            {
                await _userService.LoginAsync(username, password);
                return Ok("Login successful");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet("{userId}")]
        public async Task<IActionResult> GetUserInfo(int userId)
        {
            try
            {
                var user = await _userService.GetUserInfoAsync(userId);
                if (user != null)
                {
                    return Ok(user);
                }
                else
                {
                    return NotFound();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPut("{userId}")]
        public async Task<IActionResult> UpdateUserInfo(int userId, String fullName, String description, String avatar)
        {
            try
            {
                await _userService.UpdateUserInfoAsync(userId, fullName, description, avatar);
                return Ok("User information updated successfully");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("change-password")]
        public async Task<IActionResult> ChangePassword(string username, string oldPassword, string newPassword)
        {
            try
            {
                bool isPasswordChanged = await _userService.ChangePasswordAsync(username, oldPassword, newPassword);
                if (isPasswordChanged)
                {
                    return Ok("Password changed successfully");
                }
                else
                {
                    return BadRequest("Failed to change password");
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }


    }
}
