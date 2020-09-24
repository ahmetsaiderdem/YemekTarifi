using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class HakkımızdaAdmin : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select *From Tbl_Hakkımızda ", bgl.Connection());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
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
    //Butona update işlemi
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update Tbl_Hakkımızda set Metin=@p1", bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();
    }
}