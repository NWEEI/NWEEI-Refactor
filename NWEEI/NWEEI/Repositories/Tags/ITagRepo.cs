using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface ITagRepo
    {
        IQueryable<Tag> Tags { get; }

        // create
        void AddTag(Tag tag);

        // retrieve
        List<Tag> GetAllTags();
        Tag GetTagByID(int id);
        bool TagExists( int id );

        // update
        void UpdateTag(Tag tag);

        // delete
        void DeleteTag(Tag tag);
    }
}
