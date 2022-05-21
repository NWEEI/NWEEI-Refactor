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

        public TagRepo( NWEEIContext c ) => context = c;

        public IQueryable<Tag> Tags => context.Tags;

        // add a new tag
        public void AddTag(Tag tag)
        {
            context.Tags.Add(tag);
            context.SaveChanges();
        }

        // get a list of all tags
        public List<Tag> GetAllTags( ) => context.Tags.OrderBy( tag => tag.Name ).ToList( );

        // get a specific tag by its id
        public Tag GetTagByID(int id) =>context.Tags
                .Where(t => t.TagID == id)
                .FirstOrDefault();

        // check to see if a tag exists
        public bool TagExists( int id ) => Tags.Any( t => t.TagID == id );

        // update a tag
        public void UpdateTag(Tag tag)
        {
            context.Tags.Update(tag);
            context.SaveChanges();
        }

        // delete a tag
        public void DeleteTag(Tag tag)
        {
            context.Tags.Remove( context.Tags
                .Find( tag.TagID )
            );
            context.SaveChanges();
        }
    }
}
