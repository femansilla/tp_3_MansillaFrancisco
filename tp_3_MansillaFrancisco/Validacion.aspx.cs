using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp_3_MansillaFrancisco
{
    public partial class Validacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveLoc_Click(object sender, EventArgs e)
        {
            var Localidad = txtLocalidad.Text;
            ddlLocalidades.Items.Add(Localidad);
            txtLocalidad.Text = "";
        }

        protected void saveUser_Click(object sender, EventArgs e)
        {
            if (ddlLocalidades.Text != "")
            {
                validDdlLocalidades.Text = "";
                lblUserSuccess.Text = string.Format("Bienvenido Usuario {0}", txtUserName.Text);
            }
            else
            {
                validDdlLocalidades.Text = "Debe seleccionar una localidad";
            }
        }
    }
}