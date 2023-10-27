using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class food : System.Web.UI.Page
{
    SqlConnection cn;
    string str;
    SqlCommand com;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();
        str = "select count(*) from foodprofile";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                Label6.Text = "F00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;
                Label6.Text = "F00" + count.ToString();
            }
        }
        dr.Close();

        Label10.Text = Session["username"].ToString();
        SqlCommand cmd1 = new SqlCommand("select * from provider where providerid='"+ Session["username"].ToString() + "'", cn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            String name = dr1.GetValue(2).ToString();
            Label7.Text = name;
        }

        dr1.Close();

        if (!Page.IsPostBack)
        {
            DropDownList3.Items.Add("select");
            DropDownList3.Items.Add("Meals");
            DropDownList3.Items.Add("Beriyani");
            DropDownList3.Items.Add("Chapatti");
            DropDownList3.Items.Add("chicken curry");
            DropDownList3.Items.Add("idili");

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            SqlCommand cmd1 = new SqlCommand("insert into foodprofile values('" + Label6.Text + "','" + Label10.Text + "','" + Label7.Text + "','" + DropDownList3.SelectedItem.ToString() + "'," + TextBox2.Text + "," + TextBox3.Text + ",'" + TextBox4.Text + "')", cn);
            cmd1.ExecuteNonQuery();
            Label19.Text = "You are Successfully registered";
        
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}