using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriid = Request.QueryString["Kategoriid"];
        SqlCommand cmd = new SqlCommand(" Select * From Tbl_Yemeklerr where Kategoriid=@p1",bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", kategoriid);
        SqlDataReader dr = cmd.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
        
    }
}