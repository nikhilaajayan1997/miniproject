using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class EditSellproduct : System.Web.UI.Page
{
    SqlConnection cn;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        Label2.Text = Session["username"].ToString();
        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("Select");
            SqlCommand cmd = new SqlCommand("Select * from sellproduct where providerid='"+Session["username"].ToString()+"'", cn);
            SqlDataReader dr = cmd.ExecuteReader();

            while(dr.Read())
            {
               
                DropDownList1.Items.Add(dr["productid"].ToString());
            }
            dr.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from sellproduct where productid='" + DropDownList1.SelectedItem.ToString() + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label7.Text = dr.GetValue(4).ToString();
            TextBox1.Text = dr.GetValue(5).ToString();
            TextBox2.Text = dr.GetValue(6).ToString();
        }
        dr.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = new SqlCommand("update  sellproduct set availability='"+TextBox1.Text+"',price='"+TextBox2.Text+"' where productid='"+DropDownList1.SelectedItem.ToString()+"'", cn);
        cmd1.ExecuteNonQuery();
        Label9.Text = "Updated successfully";
    }
}