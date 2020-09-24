using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        SqlCommand cmd = new SqlCommand(" select * from Tbl_Yorum where YorumOnay=1", bgl.Connection());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        SqlCommand cmd2 = new SqlCommand("select * from Tbl_Yorum where YorumOnay =0", bgl.Connection());
        SqlDataReader dr2 = cmd2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
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