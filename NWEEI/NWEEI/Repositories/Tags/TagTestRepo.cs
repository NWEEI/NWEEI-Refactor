using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class TagTestRepo : ITagRepo
    {
        private List<Tag> tags = new List<Tag>();

        public IQueryable<Tag> Tags => tags.AsQueryable<Tag>( );

        // add a new tag
        public void AddTag(Tag tag)
        {
            // attempt to retrieve existing tag
            Tag existingTag = tags.Find(t => t.Name == tag.Name);

            // add tag to list if it doesn't already exist
            if (existingTag is not null) throw new Exception( "Tag already exists" );

            // simulate auto-incremented primary key and add article to list
            tag.TagID = tags.Count;
            tags.Add(tag);
        }

        // get a list of all tags
        public List<Tag> GetAllTags() =>Tags.ToList();

        // get a specific tag by its id
        public Tag GetTagByID(int id) => tags.Find(t => t.TagID == id);

        // check to see if an organization exists
        public bool TagExists( int id ) => Tags.Any( t => t.TagID == id );

        // update a tag
        public void UpdateTag(Tag tag)
        {
            // retrieve tag from list
            Tag existingTag = tags.Find(t => t.TagID == tag.TagID);

            // update its properties
            existingTag.Name = tag.Name;
        }

        // delete a tag
        public void DeleteTag( Tag tag ) => tags.Remove( tags.Find( t => t.TagID == tag.TagID ) );
    }
}
