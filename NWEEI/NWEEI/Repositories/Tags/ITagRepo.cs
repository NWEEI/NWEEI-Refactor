using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface ITagRepo
    {
        // retrieval methods
        IQueryable<Tag> Tags { get; }
        List<Tag> GetAllTags();
        Tag GetTagByID(int id);

        // update
        void UpdateTag(Tag tag);
    }
}
