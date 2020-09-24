using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class AdminYemekler : System.Web.UI.Page
{
    SQLConnection bgl = new SQLConnection();
    string id = "";
    string islem = "";
    string Kategorriid="";
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

       
        if (Page.IsPostBack == false)
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            islem = Request.QueryString["islem"];
            SqlCommand cmd1 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.Connection());
            SqlDataReader dr1 = cmd1.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr1;
            DropDownList1.DataBind();
        }
        SqlCommand cmd = new SqlCommand(" Select * From Tbl_Yemeklerr", bgl.Connection());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();


        if (islem == "sil")
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            SqlCommand cmd2 = new SqlCommand("select  * from Tbl_Yemeklerr where yemekid=@p1", bgl.Connection());
            cmd2.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                Kategorriid = dr2[7].ToString();
            }
            
            SqlCommand cmdDelete = new SqlCommand("Delete From Tbl_Yemeklerr where Yemekid=@p1", bgl.Connection());
            cmdDelete.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            cmdDelete.ExecuteNonQuery();
            bgl.Connection().Close();

            SqlCommand cmddelete1 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 where kategoriid=@p1", bgl.Connection());
            cmddelete1.Parameters.AddWithValue("@p1", Kategorriid);
            cmddelete1.ExecuteNonQuery();
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

    protected void btn_adminymkekle_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into Tbl_Yemeklerr (YemekAd,YemekMalzeme,YemekTarif,Kategoriid)values (@p1,@p2,@p3,@p4)", bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", txt_adminktgad.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();

        SqlCommand cmd1 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where kategoriid=@p1",bgl.Connection());
        cmd1.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        cmd1.ExecuteNonQuery();
        bgl.Connection().Close();

       

    }
}