using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    string id ="";
    string islem ="";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
            islem = Request.QueryString["islem"];
        }

        SqlCommand cmd = new SqlCommand(" Select * From Tbl_Kategoriler ", bgl.Connection());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        Panel2.Visible = false;
        Panel4.Visible = false;


        if (islem=="sil")
        {
            int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
            SqlCommand cmdDelete = new SqlCommand("Delete From Tbl_Kategoriler where kategoriid=@p1", bgl.Connection());
            cmdDelete.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            cmdDelete.ExecuteNonQuery();
            bgl.Connection().Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)",bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", txt_adminktgad.Text);
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();

    }
}