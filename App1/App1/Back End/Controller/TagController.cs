using App1.Back_End.Service;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace App1.Back_End.Controller
{
    [ApiController]
    [Route("api/tags")]
    public class TagController : ControllerBase
    {
        private TagService _tagService;

        public TagController(TagService tagService)
        {
            _tagService = tagService;
        }

        [HttpPost]
        public async Task<IActionResult> CreateTag([FromBody] string tagName, [FromQuery] int userId)
        {
            try
            {
                await _tagService.CreateTagAsync(tagName, userId);
                return Ok("Tag created successfully");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error creating tag: {ex.Message}");
            }
        }

        [HttpPost("{oldTagName}/update")]
        public async Task<IActionResult> UpdateTag(string oldTagName, string newTagName)
        {
            try
            {
                bool isTagUpdated = await _tagService.UpdateTagAsync(oldTagName, newTagName);
                if (isTagUpdated)
                {
                    return Ok("Tag updated successfully");
                }
                else
                {
                    return BadRequest("Failed to update tag");
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("user/{userId}/update")]
        public async Task<IActionResult> UpdateTagByUserId(int userId)
        {
            try
            {
                bool isTagUpdated = await _tagService.UpdateTagByUserIdAsync(userId);
                if (isTagUpdated)
                {
                    return Ok("Tag updated successfully");
                }
                else
                {
                    return BadRequest("Failed to update tag");
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet("api/tags")]
        public async Task<IActionResult> SearchTagsByTagName(string tagName, int pageSize, int pageNumber)
        {
                List<App1.Back_End.Entity.Tag> tags = await _tagService.SearchTagsByTagName(tagName, pageSize, pageNumber);

                if (tags != null)
                {
                    return Ok(tags);
                }
                else
                {
                    return NotFound();
                }
        }
    }
}
