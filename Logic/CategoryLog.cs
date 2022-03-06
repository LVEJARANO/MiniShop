using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Logic
{
    public class CategoryLog
    {
        CategoryDat objCat = new CategoryDat();
        public DataSet showCategories()
        {
            return objCat.showCategories();
        }
        public bool saveCategory(string _description)
        {
            return objCat.saveCategory(_description);
        }
        public bool updateCategory(int _id,string _description)
        {
            return objCat.updateCategory(_id,_description);
        }
        public bool deleteCategory(int _id)
        {
            return objCat.deleteCategory(_id);
        }
    }
}