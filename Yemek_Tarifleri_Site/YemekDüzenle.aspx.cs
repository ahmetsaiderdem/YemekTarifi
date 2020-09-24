using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDüzenleaspx : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    string id ;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand(" Select * From Tbl_Yemeklerr where Yemekid=@p1", bgl.Connection());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();

            }
            bgl.Connection().Close();

            if (Page.IsPostBack == false)
            {
                SqlCommand cmd1 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.Connection());
                SqlDataReader dr1 = cmd1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr1;
                DropDownList1.DataBind();
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
        SqlCommand cmd = new SqlCommand("Update Tbl_Yemeklerr set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where yemekid=@p5", bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@p5", (id > 0 ? id : 0));
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
        SqlCommand cmd = new SqlCommand("Update Tbl_Yemeklerr set Durum=0", bgl.Connection());
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();

        SqlCommand cmd1 = new SqlCommand("Update Tbl_Yemeklerr set durum=1 where yemekid=@p1",bgl.Connection());
        cmd1.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
        cmd1.ExecuteNonQuery();
        bgl.Connection().Close();
    }
}