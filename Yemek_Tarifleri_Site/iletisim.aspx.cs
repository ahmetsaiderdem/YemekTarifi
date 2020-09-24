using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SQLConnection bgl = new SQLConnection();
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into Tbl_Mesajlar (MesajGönderen,MesajjBaşlık,MesajMail,Mesajİçerik)values(@p1,@p2,@p3,@p4)",bgl.Connection());
        cmd.Parameters.AddWithValue("@p1", txt_as.Text);
        cmd.Parameters.AddWithValue("@p2", txt_konu.Text);
        cmd.Parameters.AddWithValue("@p3", txt_mailad.Text);
        cmd.Parameters.AddWithValue("@p4", txt_mesaj.Text);
        cmd.ExecuteNonQuery();
        bgl.Connection().Close();
    }
}