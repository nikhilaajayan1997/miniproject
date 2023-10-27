using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    SqlConnection cn;
    
    string str;
    SqlCommand com;
    int count;
    
        
    protected void Page_Load(object sender, EventArgs e)
    {
        cn=new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
       cn.Open();
         if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("Provider");
            DropDownList1.Items.Add("Customer");

        }
        

       
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Provider"))
         {
             str = "select count(*) from provider";
             com = new SqlCommand(str, cn);
             SqlDataReader dr = com.ExecuteReader();
             if (dr.Read())
             {
                   
                     if (dr.IsDBNull(0))
                     {
                         count = 1;
                        id.Text = "P00" + count.ToString();
                     }
                     else
                     {
                         count = Convert.ToInt32(dr.GetValue(0).ToString());
                         count++;
                         id.Text ="P00"+count.ToString();
                     }
             }
             dr.Close();
         }
        else if (DropDownList1.SelectedItem.ToString().Equals("Customer"))
        {
            str = "select count(*) from customer";
            com = new SqlCommand(str, cn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {

                if (dr.IsDBNull(0))
                {
                    count = 1;
                    id.Text = "C00" + count.ToString();
                }
                else
                {
                    count= Convert.ToInt32(dr.GetValue(0).ToString());
                    count++;
                    id.Text = "C00" + count.ToString();
                }
            }
            dr.Close();
        }
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Provider"))
        {
            SqlCommand cmd = new SqlCommand("insert into provider values('" + DropDownList1.SelectedItem.ToString() + "','" + id.Text + "','" + name.Text + "','" + address.Text + "'," + phone.Text + ",'" + dob.Text + "','" + email.Text + "','" + registr.Text + "','null')", cn);
            cmd.ExecuteNonQuery();
           SqlCommand cmd1= new SqlCommand("insert into users values('" +id.Text+ "','"+dob.Text+"','provider')", cn);
            cmd1.ExecuteNonQuery();

            Label11.Visible = true;
            Label11.Text = "You are Successfully registered";

        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into customer values('" + DropDownList1.SelectedItem.ToString() + "','" + id.Text + "','" + name.Text + "','" + address.Text + "'," + phone.Text + ",'" + dob.Text + "','" + email.Text + "','" + registr.Text + "','null')", cn);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("insert into users values('" +id.Text+ "','" + dob.Text + "','customer')", cn);
            cmd1.ExecuteNonQuery();
            Label11.Visible = true;
            Label11.Text = "You are Successfully registered";

        }
        
    }



   
}