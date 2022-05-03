using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface ICategoryRepo
    {
        IQueryable<Category> Categories { get; }

        // create
        void AddCategory(Category category);

        // retrieve
        List<Category> GetAllCategories();
        Category GetCategoryByID(int id);

        // update
        void UpdateCategory(Category category);
    }
}
