using hasta_kayit.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hasta_kayit
{
    public partial class HastaEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            // Eğer Application'da hasta listesi yoksa başlat
            if (Application["HastaListesi"] == null)
            {
                Application["HastaListesi"] = new List<Hasta>();
            }

            // Yeni hasta oluştur ve listeye ekle
            var yeniHasta = new Hasta
            {
                Ad = txtAd.Text,
                Soyad = txtSoyad.Text,
                Yas = int.Parse(txtYas.Text),
                TcKimlik = txtTc.Text,
                Email = txtEmail.Text,
                Adres = txtAdres.Text,
                Cinsiyet = ddlCinsiyet.SelectedValue
            };

            // Listeye ekle
            var hastaListesi = (List<Hasta>)Application["HastaListesi"];
            hastaListesi.Add(yeniHasta);

            // Formu temizle
            txtAd.Text = string.Empty;
            txtSoyad.Text = string.Empty;
            txtYas.Text = string.Empty;
            txtTc.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtAdres.Text = string.Empty;
            ddlCinsiyet.SelectedIndex = 0;
            Response.Redirect("Default.aspx");
        }

        protected void btnRedirectToDefaultPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}