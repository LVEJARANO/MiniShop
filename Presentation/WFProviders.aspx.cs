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
    public partial class WFProviders : System.Web.UI.Page
    {
        ProvidersLog objProv = new ProvidersLog();
        private string _nit, _name;
        private int _id;
        private bool executed = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //showProviders();
            }
        }
        private void showProviders()
        {
            DataSet objData = new DataSet();
            objData = objProv.showProviders();
            GVProvider.DataSource = objData;
            GVProvider.DataBind();
        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            _nit = TBNit.Text;
            _name = TBName.Text;
            executed = objProv.saveProvider(_nit,_name);
            if (executed)
            {
                LblMsj.Text = "Se guardo exitosamente";
                showProviders();
            }
            else
            {
                LblMsj.Text = "Error al guardar";
            }
        }
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            _id = Convert.ToInt32(TBId.Text);
            _nit = TBNit.Text;
            _name = TBName.Text;
            executed = objProv.updateProvider(_id,_nit, _name);
            if (executed)
            {
                LblMsj.Text = "Se actualizo exitosamente";
                showProviders();
            }
            else
            {
                LblMsj.Text = "Error al actualizar";
            }
        }
        protected void GVProvider_SelectedIndexChanged(object sender, EventArgs e)
        {
            TBId.Text = GVProvider.SelectedRow.Cells[1].Text;
            TBNit.Text = GVProvider.SelectedRow.Cells[2].Text;
            TBName.Text = GVProvider.SelectedRow.Cells[3].Text;
            
        }
    }
}