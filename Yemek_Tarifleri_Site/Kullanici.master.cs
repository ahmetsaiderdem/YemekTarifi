using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kullanici : System.Web.UI.MasterPage
{
    SQLConnection bgl = new SQLConnection();
	protected void Page_Load(object sender, EventArgs e)
	{
        SqlCommand cmd = new SqlCommand(" Select * From Tbl_Kategoriler",bgl.Connection());
        SqlDataReader oku = cmd.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
	}
}
