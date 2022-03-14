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
    public partial class WFCategories : System.Web.UI.Page
    {
        CategoryLog objCat = new CategoryLog();
        private string _description;
        private int _id;
        private bool executed = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                showCategories();
            }

        }
        private void showCategories()
        {
            DataSet objData = new DataSet();
            objData = objCat.showCategories();
            GVCategory.DataSource = objData;
            GVCategory.DataBind();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            _description = TBDescription.Text;
            executed = objCat.saveCategory(_description);
            if (executed)
            {
                LblMsj.Text = "Se guardo exitosamente";
            }
            else
            {
                LblMsj.Text = "Error al guardar";
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            _id = Convert.ToInt32(TBId.Text);
            _description = TBDescription.Text;
            executed = objCat.updateCategory(_id,_description);
            if (executed)
            {
                LblMsj.Text = "Se actualizo exitosamente";
                showCategories();
            }
            else
            {
                LblMsj.Text = "Error al actualizar";
            }
        }

        protected void GVCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            TBId.Text = GVCategory.SelectedRow.Cells[2].Text;
            TBDescription.Text = GVCategory.SelectedRow.Cells[3].Text;
        }

        protected void GVCategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int _idCategory = Convert.ToInt32(GVCategory.DataKeys[e.RowIndex].Values[0]);
            executed = objCat.deleteCategory(_idCategory);

            if (executed)
            {
                LblMsj.Text = "El producto se elimino exitosamente";
                GVCategory.EditIndex = -1;
                showCategories();
            }
            else
            {
                LblMsj.Text = "Error al eliminar el producto";
            }
            
        }
    }
}