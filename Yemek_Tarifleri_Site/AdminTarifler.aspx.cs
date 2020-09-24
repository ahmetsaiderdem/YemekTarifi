using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class AdminTarifler : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Tarifid"]);
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Tarifler where Tarifid=@p1", bgl.Connection());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[5].ToString();
                TextBox5.Text = dr[6].ToString();
            }
            bgl.Connection().Close();
        }

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

    protected void btn_onayla_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Tarifid"]);
        SqlCommand cmd = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.Connection());
        cmd.Parameters.AddWithValue("@p1",(id>0?id:0));
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();


        SqlCommand cmd1 = new SqlCommand("İnsert into Tbl_Yemeklerr (YemekAd,YemekMalzeme,YemekTarif,Kategoriid)values (@p1,@p2,@p3,@p4)",bgl.Connection());
        cmd1.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd1.ExecuteNonQuery();
        bgl.Connection().Close();

    }
}