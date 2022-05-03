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

        // add a new tag
        public void AddTag(Tag tag)
        {
            // attempt to retrieve existing tag
            Tag existingTag = tags.Find(t => t.Name == tag.Name);

            // add tag to list if it doesn't already exist
            if (existingTag == null)
            {
                // simulate auto-incremented primary key and add article to list
                tag.TagID = tags.Count;
                tags.Add(tag);
            }
            else
            {
                throw new Exception("Tag already exists");
            }
        }

        // get a list of all tags
        public List<Tag> GetAllTags()
        {
            tags = Tags.ToList();

            return tags;
        }

        // get a specific tag by its id
        public Tag GetTagByID(int id)
        {
            Tag tag = tags.Find(t => t.TagID == id);
            return tag;
        }

        // update a tag
        public void UpdateTag(Tag tag)
        {
            // retrieve tag from list
            Tag existingTag = tags.Find(t => t.TagID == tag.TagID);

            // update its properties
            existingTag.Name = tag.Name;
        }
    }
}
