using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class TagRepo : ITagRepo
    {
        private NWEEIContext context;

        public TagRepo(NWEEIContext c)
        {
            context = c;
        }

        public IQueryable<Tag> Tags
        {
            get
            {
                return context.Tags;
            }
        }

        // add a new tag
        public void AddTag(Tag tag)
        {
            context.Tags.Add(tag);
            context.SaveChanges();
        }

        #region retrieval methods

        // get a list of all tags
        public List<Tag> GetAllTags()
        {
            List<Tag> tags = context.Tags.ToList();

            return tags;
        }

        // get a specific tag by its id
        public Tag GetTagByID(int id)
        {
            Tag tag = context.Tags
                .Where(t => t.TagID == id)
                .FirstOrDefault();

            return tag;
        }

        #endregion

        // update a tag
        public void UpdateTag(Tag tag)
        {
            context.Tags.Update(tag);
            context.SaveChanges();
        }
    }
}
