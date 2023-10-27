using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;


public partial class EditFood : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        Label4.Text = Session["username"].ToString();

        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("Select");
            SqlCommand cmd = new SqlCommand("Select * from foodprofile where providerid='" + Session["username"].ToString() + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {

                DropDownList1.Items.Add(dr["foodid"].ToString());
            }
            dr.Close();
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        SqlCommand cmd = new SqlCommand("Select * from foodprofile where providerid='" + Session["username"].ToString() + "' and foodid='"+DropDownList1.SelectedItem.ToString()+"'", cn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            Label6.Text = (dr["fooditem"].ToString());
            TextBox1.Text = (dr["qty"].ToString());
            TextBox2.Text = (dr["price"].ToString());
            TextBox3.Text = (dr["des"].ToString());
  
  
        }
        dr.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd=new SqlCommand("update foodprofile set qty='"+TextBox1.Text+"',price='"+TextBox2.Text+"',des='"+TextBox3.Text+"' where foodid='"+DropDownList1.SelectedItem.ToString()+"'",cn);
        cmd.ExecuteNonQuery();
        Label10.Text = "updated successfully";
    }
}