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


        #region retrieval methods

        public IQueryable<Tag> Tags
        {
            get
            {
                return context.Tags;
            }
        }

        public List<Tag> GetAllTags()
        {
            List<Tag> tags = context.Tags.ToList();

            return tags;
        }

        public Tag GetTagByID(int id)
        {
            Tag tag = context.Tags
                .Where(t => t.TagID == id)
                .FirstOrDefault();

            return tag;
        }

        #endregion

        public void UpdateTag(Tag tag)
        {
            context.Tags.Update(tag);
            context.SaveChanges();
        }
    }
}
