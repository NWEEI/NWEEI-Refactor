using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class TagTestRepo : ITagRepo
    {
        private List<Tag> tags = new List<Tag>();

        public IQueryable<Tag> Tags
        {
            get
            {
                return tags.AsQueryable<Tag>();
            }
        }

        public List<Tag> GetAllTags()
        {
            tags = Tags.ToList();

            return tags;
        }

        public Tag GetTagByID(int id)
        {
            Tag tag = tags.Find(t => t.TagID == id);
            return tag;
        }

        public void UpdateTag(Tag tag)
        {
            // retrieve tag from list
            Tag existingTag = tags.Find(t => t.TagID == tag.TagID);

            // update its properties
            existingTag.Name = tag.Name;
        }
    }
}
