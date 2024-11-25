using hasta_kayit.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hasta_kayit
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Application'dan hasta listesini kontrol et
                if (Application["HastaListesi"] == null)
                {
                    // Eğer boşsa yeni bir liste oluştur
                    Application["HastaListesi"] = new List<Hasta>();
                }

                // Hasta listesini al ve GridView'e bağla
                var hastaListesi = (List<Hasta>)Application["HastaListesi"];
                gvHastaListesi.DataSource = hastaListesi;
                gvHastaListesi.DataBind();
            }
        }

        protected void btnRedirectToAddPatients_Click(object sender, EventArgs e)
        {
            Response.Redirect("HastaEkle.aspx");
        }
    }
}
