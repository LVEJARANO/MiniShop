using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Data
{
    public class ProductsDat
    {
        Persistence objPer = new Persistence();

        //Metodo para mostrar todos los Productos
        public DataSet showProducts()
        {
            MySqlDataAdapter objAdapter = new MySqlDataAdapter();
            DataSet objData = new DataSet();

            MySqlCommand objSelectCmd = new MySqlCommand();
            objSelectCmd.Connection = objPer.openConnection();
            objSelectCmd.CommandText = "spSelectProducts";
            objSelectCmd.CommandType = CommandType.StoredProcedure;
            objAdapter.SelectCommand = objSelectCmd;
            objAdapter.Fill(objData);
            objPer.closeConnection();
            return objData;
        }

        //Metodo para guardar un nuevo Producto
        public bool saveProducts(string _code, string _description, int _quantity, double _price, int _fkCategory, int _fkProvider)
        {
            bool executed = false;
            int row;

            MySqlCommand objSelectCmd = new MySqlCommand();
            objSelectCmd.Connection = objPer.openConnection();
            objSelectCmd.CommandText = "spInsertProducts"; //nombre del procedimiento almacenado
            objSelectCmd.CommandType = CommandType.StoredProcedure;
            objSelectCmd.Parameters.Add("p_code", MySqlDbType.VarString).Value = _code;
            objSelectCmd.Parameters.Add("p_description", MySqlDbType.VarString).Value = _description;
            objSelectCmd.Parameters.Add("p_quantity", MySqlDbType.Int32).Value = _quantity;
            objSelectCmd.Parameters.Add("p_price", MySqlDbType.Double).Value = _price;
            objSelectCmd.Parameters.Add("p_fkcategory", MySqlDbType.Int32).Value = _fkCategory;
            objSelectCmd.Parameters.Add("p_fkprovider", MySqlDbType.Int32).Value = _fkProvider;

            try
            {
                row = objSelectCmd.ExecuteNonQuery();
                if (row == 1)
                {
                    executed = true;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error " + e.ToString());
            }
            objPer.closeConnection();
            return executed;
        }

        //Metodo para actulizar un producto
        public bool updateProducts(int _id,string _code, string _description, int _quantity, double _price, int _fkCategory, int _fkProvider)
        {
            bool executed = false;
            int row;

            MySqlCommand objSelectCmd = new MySqlCommand();
            objSelectCmd.Connection = objPer.openConnection();
            objSelectCmd.CommandText = "spUpdateProduct"; //nombre del procedimiento almacenado
            objSelectCmd.CommandType = CommandType.StoredProcedure;
            objSelectCmd.Parameters.Add("p_id", MySqlDbType.Int32).Value = _id;
            objSelectCmd.Parameters.Add("p_code", MySqlDbType.VarString).Value = _code;
            objSelectCmd.Parameters.Add("p_description", MySqlDbType.VarString).Value = _description;
            objSelectCmd.Parameters.Add("p_quantity", MySqlDbType.Int32).Value = _quantity;
            objSelectCmd.Parameters.Add("p_price", MySqlDbType.Double).Value = _price;
            objSelectCmd.Parameters.Add("p_fkcategory", MySqlDbType.Int32).Value = _fkCategory;
            objSelectCmd.Parameters.Add("p_fkprovider", MySqlDbType.Int32).Value = _fkProvider;

            try
            {
                row = objSelectCmd.ExecuteNonQuery();
                if (row == 1)
                {
                    executed = true;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error " + e.ToString());
            }
            objPer.closeConnection();
            return executed;
        }

    }
}