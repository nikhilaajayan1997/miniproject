using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class changepassword : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("select * from users where username='" + Session["username"].ToString() + "'and password='" + txtcpwd.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            SqlCommand cmd1 = new SqlCommand("update users set password='" + txtnpwd.Text + "'where username='" + Session["username"].ToString() + "'", cn);
            cmd1.ExecuteNonQuery();
            Session["msg"] = "passwrd changed successfully";
    Label6.Text= "pwd changed successfully.....";


        }
        else
        {
            Label5.Text = "invalid current pwd";
            txtcpwd.Text = "";
        }
    }
}

