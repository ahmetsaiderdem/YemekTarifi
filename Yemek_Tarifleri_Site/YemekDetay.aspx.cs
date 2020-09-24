using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        int yemekid =Convert.ToInt32(Request.QueryString["yemekid"]);
        SqlCommand cmd = new SqlCommand("Select YemekAd From Tbl_Yemeklerr Where yemekid=@p1", bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", (yemekid > 0 ? yemekid : 0));

        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label7.Text = dr[0].ToString();

        }
        bgl.Connection().Close();
        SqlCommand cmd2 = new SqlCommand(" Select * From Tbl_Yorum where yemekid=@p2",bgl.Connection());
        cmd2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int yemekid = Convert.ToInt32(Request.QueryString["yemekid"]);
        SqlCommand cmd =new SqlCommand("insert into Tbl_Yorum (yorumadsoyad,yorummail,yorum,yemekid) values (@p1,@p2,@p3,@p4) ",bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", yemekid);
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();
    }
}