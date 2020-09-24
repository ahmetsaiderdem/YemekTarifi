using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Hakkımızda : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select *From Tbl_Hakkımızda", bgl.Connection());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

    }
}