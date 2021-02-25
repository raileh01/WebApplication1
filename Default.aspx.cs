using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int resultInt = 0;

            bool cantidadEsNumero = int.TryParse(CantidadId.Text, out resultInt);
            bool PrecioEsNumero = int.TryParse(PrecioId.Text, out resultInt);

            CantidadId.Text = CantidadId.Text == "" || !cantidadEsNumero ? "0" : CantidadId.Text;
            NombreId.Text = NombreId.Text == "" ? "Unasigned" : NombreId.Text;
            ProductoId.Text = ProductoId.Text == "" ? "Unasigned" : ProductoId.Text;
            PrecioId.Text = PrecioId.Text == "" || !PrecioEsNumero ? "0" : PrecioId.Text;

            ListItem li = new ListItem();
            if (SelectOpciones.Text == "Favoritos")
            {
                li.Text = "Nombre : " + NombreId.Text.ToString() + " - Producto : " + ProductoId.Text.ToString() + " - Precio : " + PrecioId.Text;
                ListaFavoritos.Items.Add(li);
            }
            else
            {
                li.Text = "Cantidad : " + CantidadId.Text + " - Nombre : " + NombreId.Text.ToString() + " - Precio : " + PrecioId.Text + " - SubTotal : " + decimal.Parse(PrecioId.Text) * decimal.Parse(CantidadId.Text);
                ListaCarrito.Items.Add(li);
                SumaSubTotalItems.Text = (decimal.Parse(SumaSubTotalItems.Text) + (decimal.Parse(PrecioId.Text) * (CantidadId.Text == "0" ? 1 : decimal.Parse(CantidadId.Text)) )).ToString();
            }
        }
    }
}