using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class sellproduct : System.Web.UI.Page
{
    SqlConnection cn;
    string str;
    SqlCommand com;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        str = "select count(*) from sellproduct";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                Label5.Text = "PR00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;


                Label5.Text = "PR00" + count.ToString();
            }
        }
        dr.Close();

        Label6.Text = Session["username"].ToString();
        SqlCommand cmd = new SqlCommand("select name from provider where providerid='" + Session["username"].ToString() + "'", cn);
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.Read())
        {
            Label15.Text = (dr1["name"].ToString());
        }
        dr1.Close();

        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("Vegitable");
            DropDownList1.Items.Add("Fruits");
            DropDownList1.Items.Add("Egg");
            DropDownList1.Items.Add("Milk");
            DropDownList1.Items.Add("Poultry");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Vegitable"))
        {
            Label7.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            DropDownList2.Visible = true;
            Button1.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;

            Label8.Visible = false;
            Label9.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            DropDownList2.Items.Clear();

           
            DropDownList2.Items.Add("carrot");
            DropDownList2.Items.Add("drum stick");
            DropDownList2.Items.Add("tomato");
            DropDownList2.Items.Add("chilli");
            DropDownList2.Items.Add("Ladies finger");
            DropDownList2.Items.Add("Brinjal");
            DropDownList2.Items.Add("Beans");
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Fruits"))
        {
            DropDownList2.Items.Clear();
            Label7.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            DropDownList2.Visible = true;
            Button1.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;

            Label8.Visible = false;
            Label9.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;

           
            DropDownList2.Items.Add("Mango");
            DropDownList2.Items.Add("Guava");
            DropDownList2.Items.Add("WaterMelon");
            DropDownList2.Items.Add("Banana");
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Egg"))
        {
            Label8.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Button1.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            DropDownList3.Visible = true;

            Label7.Visible = false;
            Label9.Visible = false;
            //Label9.Visible = false;
            Label10.Visible = false;
            DropDownList2.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;

            DropDownList3.Items.Add("chicken");
            DropDownList3.Items.Add("duck");
            
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Milk"))
        {
            Label9.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Button1.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            DropDownList4.Visible = true;

            Label7.Visible = false;
            Label8.Visible = false;
           // Label9.Visible = false;
            Label10.Visible = false;
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            DropDownList5.Visible = false;

            DropDownList4.Items.Add("cow");
            DropDownList4.Items.Add("goat");
        }
        else
        {
            Label10.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Button1.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            DropDownList5.Visible = true;

            Label8.Visible = false;
            Label7.Visible = false;
            Label9.Visible = false;
           // Label10.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList2.Visible = false;

            DropDownList5.Items.Add("chicken meat");
            DropDownList5.Items.Add("duck meat");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Vegitable"))
        {
            SqlCommand cmd1 = new SqlCommand("insert into sellproduct values('"+Label5.Text+"','"+Label6.Text+"','"+Label15.Text+"','"+DropDownList1.SelectedItem.ToString()+"','"+DropDownList2.SelectedItem.ToString()+"','"+TextBox1.Text+"','"+TextBox2.Text+"')", cn);
            cmd1.ExecuteNonQuery();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Fruits"))
        {
            SqlCommand cmd1 = new SqlCommand("insert into sellproduct values('" + Label5.Text + "','" + Label6.Text + "','" + Label15.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", cn);
            cmd1.ExecuteNonQuery();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Egg"))
        {
            SqlCommand cmd1 = new SqlCommand("insert into sellproduct values('" + Label5.Text + "','" + Label6.Text + "','" + Label15.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList3.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", cn);
            cmd1.ExecuteNonQuery();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Milk"))
        {
            SqlCommand cmd1 = new SqlCommand("insert into sellproduct values('" + Label5.Text + "','" + Label6.Text + "','" + Label15.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList4.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", cn);
            cmd1.ExecuteNonQuery();
        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("insert into sellproduct values('" + Label5.Text + "','" + Label6.Text + "','" + Label15.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList5.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", cn);
            cmd1.ExecuteNonQuery();
        }
        Label13.Text = "successfully Registerred";
    }
}