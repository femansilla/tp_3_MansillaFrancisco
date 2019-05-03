using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp_3_MansillaFrancisco
{
    public partial class SeleccionArticulos : System.Web.UI.Page
    {
        private static ComercioEntities _dbContext = new ComercioEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["ArtSelected"] = new List<int>();
            }
        }

        protected void btnSeleccionar_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("SelectEvent"))
            {
                var selected = Session["ArtSelected"] as List<int>;
                selected.Add(int.Parse(e.CommandArgument.ToString()));
                Session["ArtSelected"] = selected;
            }
        }

        protected void sortMinMax_Click(object sender, EventArgs e)
        {
            myDS.SelectCommand = "Select * from articulo order by PRECIO_ART asc";
        }

        protected void sortMaxMin_Click(object sender, EventArgs e)
        {
            myDS.SelectCommand = "Select * from articulo order by PRECIO_ART desc";
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("ShowMoreData"))
            {
                var value = _dbContext.ARTICULO.Where(x => x.ID_ART.ToString() == e.CommandArgument).Select(v =>
                new { Nombre = v.NOMBRE, Tipo = v.TIPO.DESCRIPCION, Marca = v.MARCA.DESCRIPCION }).FirstOrDefault();
                lblNombre.Text = string.Format("<strong>Nombre:</strong> {0}", value.Nombre);
                lblTipo.Text = string.Format("<strong>Tipo:</strong> {0}", value.Tipo);
                lblMarca.Text = string.Format("<strong>Marca:</strong> {0}", value.Marca);
            }
        }

        protected void filterMarca_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "comandofilterMarca")
            {
                var Marca = e.CommandArgument.ToString();
                string comando = "Select * from articulo where ID_MARCA = (select ID_MARCA from MARCA where DESCRIPCION like '%"+ Marca.ToString() + "%')";
                myDS.SelectCommand = comando;
            }
        }
    }
}