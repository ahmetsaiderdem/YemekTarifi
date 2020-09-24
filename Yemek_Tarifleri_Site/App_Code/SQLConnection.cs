using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// SQLConnection için özet açıklama
/// </summary>
public class SQLConnection
{
    public SqlConnection Connection()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-J5F3SGA;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");
        baglan.Open();
        return baglan;
        
    }
}