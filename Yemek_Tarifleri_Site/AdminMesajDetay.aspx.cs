using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class AdminMesajDetay : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Mesajid"]);
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select MesajGönderen,MesajjBaşlık,MesajMail,Mesajİçerik From Tbl_Mesajlar where Mesajid=@p1 ", bgl.Connection());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txt_adsoyad.Text = dr[0].ToString();
                txt_baslik.Text = dr[1].ToString();
                txt_mail.Text = dr[2].ToString();
                txt_icerik.Text = dr[3].ToString();
            }
            bgl.Connection().Close();
        }



    }

    protected void btn_güncelle_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Mesajid"]);
        SqlCommand cmd = new SqlCommand("insert into Tbl_Mesajlar (MesajGönderen,MesajjBaşlık,MesajMail,Mesajİçerik)values(@p1,@p2,@p3,@p4)", bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", txt_adsoyad.Text);
        cmd.Parameters.AddWithValue("@p2", txt_baslik.Text);
        cmd.Parameters.AddWithValue("@p3", txt_mail.Text);
        cmd.Parameters.AddWithValue("@p4", txt_icerik.Text);
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();
    }
}