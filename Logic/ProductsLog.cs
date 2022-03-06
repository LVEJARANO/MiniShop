using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Logic
{
    public class ProductsLog
    {
        ProductsDat objPro = new ProductsDat();
        public DataSet showProducts()
        {
            return objPro.showProducts();
        }
        public bool saveProducts(string _code, string _description, int _quantity, double _price, int _fkCategory, int _fkProvider)
        {
            return objPro.saveProducts( _code,  _description,  _quantity,  _price,  _fkCategory,  _fkProvider);
        }
    }
}