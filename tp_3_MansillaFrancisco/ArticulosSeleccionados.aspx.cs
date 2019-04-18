using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp_3_MansillaFrancisco
{
    public partial class ArticulosSeleccionados : System.Web.UI.Page
    {
        private static ComercioEntities _dbContext = new ComercioEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                CargarDataSourceGV();
        }

        private void CargarDataSourceGV()
        {
            List<int> selected = Session["ArtSelected"] as List<int>;

            if (selected.Count != 0)
            {
                var query = from p in selected
                            group p by p into g
                            select new
                            {
                                ID = g.Key,
                                Cant = g.Count()
                            };
                var alga = _dbContext.ARTICULO.Where(s => selected.Contains(s.ID_ART)).OrderBy(p => p.PRECIO_ART).Select(x =>
                   new {
                       x.ID_ART,
                       nombre = x.NOMBRE,
                       Tipo = x.TIPO.DESCRIPCION,
                       Marca = x.MARCA.DESCRIPCION,
                       precio = x.PRECIO_ART
                   }).ToList();
                var alga2 = alga.Select(x => new
                {
                    x.nombre,
                    x.Tipo,
                    x.Marca,
                    x.precio,
                    Cant = query.ToList().Find(c => c.ID == x.ID_ART).Cant
                }).ToList();

                GridView1.DataSource = alga2;
            }
            else
            {
                deleteElement.Visible = false;
            }

            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            CargarDataSourceGV();
        }

        protected void deleteElement_Click(object sender, EventArgs e)
        {
            if (Session["ArtSelected"] != null)
                Session["ArtSelected"] = new List<int>();

            CargarDataSourceGV();
        }
    }
}