using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class AdminYorumDetay : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Yorumid"]);

        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand(" Select YorumAdSoyad,YorumMail,Yorum,YemekAd From Tbl_Yorum inner join Tbl_Yemeklerr on Tbl_Yorum.Yemekid=Tbl_Yemeklerr.Yemekid where Yorumid=@p1", bgl.Connection());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txt_adsoyad.Text = dr[0].ToString();
                txt_mail.Text = dr[1].ToString();
                txt_içerik.Text = dr[2].ToString();
                txt_yemek.Text = dr[3].ToString();

            }
            bgl.Connection().Close();
        }
    }



    protected void btn_onayla_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Yorumid"]);
        SqlCommand cmd = new SqlCommand("Update Tbl_Yorum set  Yorum=@p1,YorumOnay=@p2 where Yorumid=@p3", bgl.Connection());
        cmd.Parameters.AddWithValue("@p1",txt_içerik.Text);
        cmd.Parameters.AddWithValue("@p2", "True");
        cmd.Parameters.AddWithValue("@p3", (id > 0 ? id : 0));
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();
    }
}