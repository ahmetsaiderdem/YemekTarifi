using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminfTarifler : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        SqlCommand cmd = new SqlCommand("Select * From Tbl_Tarifler where TarifDurum=0",bgl.Connection());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        SqlCommand cmd1 = new SqlCommand("Select * From Tbl_Tarifler where TarifDurum=1", bgl.Connection());
        SqlDataReader dr1 = cmd.ExecuteReader();
        DataList2.DataSource = dr1;
        DataList2.DataBind();

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
}