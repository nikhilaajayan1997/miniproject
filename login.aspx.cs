using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from users where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'",cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            String type = dr.GetValue(2).ToString();
            Session["username"] = TextBox1.Text;


            if (type.Equals("administrator"))
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                if (type.Equals("provider"))
                {
                    Response.Redirect("provider.aspx");
                }
                else
                {
                    Response.Redirect("customer.aspx");
                }
            }
            
        }
        else
        {
            Label4.Visible = true;
            Label4.Text = "invalid username/pwd";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        dr.Close();
    }
}