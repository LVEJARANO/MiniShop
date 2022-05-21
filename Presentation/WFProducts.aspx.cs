using Logic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentation
{
    public partial class WFProducts : System.Web.UI.Page
    {
        ProductsLog objPro = new ProductsLog();
        CategoryLog objCat = new CategoryLog();
        ProvidersLog objPrv = new ProvidersLog();

        private string _code,_description;
        private int _id, _quantity, _fkCategory,_fkProduct;
        private double _price;
        private bool executed = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TBId.Visible = false;//Se oculta el Id
                showProducts();
                showCategoriesDDL();
                showProvidersDDL();
            }

        }
        private void showProducts()
        {
            DataSet objData = new DataSet();
            objData = objPro.showProducts();
            GVProducts.DataSource = objData;
            GVProducts.DataBind();
        }

        private void showCategoriesDDL()
        {
            DDLCategories.DataSource = objCat.showCategories();
            DDLCategories.DataValueField = "cat_id";
            DDLCategories.DataTextField = "cat_descripcion";
            DDLCategories.DataBind();
            DDLCategories.Items.Insert(0, "Seleccione");

        }
        //Evento que permite ocultar columnas de la GridView
        protected void GVProducts_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Visible = false;//Oculta la cabecera del id
                e.Row.Cells[5].Visible = false;//Oculta la cabecera del fkCategories
                e.Row.Cells[7].Visible = false;//Oculta la cabecera del fkProviders
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].Visible = false;//Oculta la fila del id
                e.Row.Cells[5].Visible = false;//Oculta la fila del fkCategories
                e.Row.Cells[7].Visible = false;//Oculta la fila del fkProviders
            }
        }

        private void showProvidersDDL()
        {
            DDLProviders.DataSource = objPrv.showProvidersDDL();
            DDLProviders.DataValueField = "prov_id";
            DDLProviders.DataTextField = "prov_nombre";
            DDLProviders.DataBind();
            DDLProviders.Items.Insert(0, "Seleccione");

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            _code = TBCode.Text;
            _description = TBDescription.Text;
            _quantity = Convert.ToInt32(TBQuantity.Text);
            _price = Convert.ToDouble(TBPrice.Text);
            _fkCategory = Convert.ToInt32(DDLCategories.SelectedValue);
            _fkProduct = Convert.ToInt32(DDLProviders.SelectedValue);

            executed = objPro.saveProducts(_code,_description,_quantity,_price,_fkCategory,_fkProduct);
            if (executed)
            {
                LblMsj.Text = "Se guardo exitosamente";
                showProducts();
            }
            else
            {
                LblMsj.Text = "Error al guardar";
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            _id = Convert.ToInt32(TBId.Text);
            _code = TBCode.Text;
            _description = TBDescription.Text;
            _quantity = Convert.ToInt32(TBQuantity.Text);
            _price = Convert.ToDouble(TBPrice.Text);
            _fkCategory = Convert.ToInt32(DDLCategories.SelectedValue);
            _fkProduct = Convert.ToInt32(DDLProviders.SelectedValue);
            executed = objPro.updateProducts(_id,_code, _description, _quantity, _price, _fkCategory, _fkProduct);

            if (executed)
            {
                LblMsj.Text = "Se actualizo exitosamente";
                showProducts();
            }
            else
            {
                LblMsj.Text = "Error al actualizar";
            }
        }
        protected void GVProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            TBId.Text = GVProducts.SelectedRow.Cells[0].Text;
            TBCode.Text = GVProducts.SelectedRow.Cells[1].Text;
            TBDescription.Text = GVProducts.SelectedRow.Cells[2].Text;
            TBQuantity.Text = GVProducts.SelectedRow.Cells[3].Text;
            TBPrice.Text = GVProducts.SelectedRow.Cells[4].Text;
            DDLCategories.SelectedValue = GVProducts.SelectedRow.Cells[5].Text;
            DDLProviders.SelectedValue = GVProducts.SelectedRow.Cells[7].Text;
        }
    }
}