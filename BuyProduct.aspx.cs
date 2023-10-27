using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class BuyProduct : System.Web.UI.Page
{
    SqlConnection cn;

    string str;
    SqlCommand com;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        str = "select count(*) from buyproduct";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                Label6.Text= "BP00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;


                Label6.Text = "BP00" + count.ToString();
            }
        }
        dr.Close();

        Label7.Text = Session["username"].ToString();

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

            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("select");
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
            DropDownList2.Items.Add("select");
            DropDownList2.Items.Add("Mango");
            DropDownList2.Items.Add("Guava");
            DropDownList2.Items.Add("WaterMelon");
            DropDownList2.Items.Add("Banana");
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Egg"))
        {
            
             DropDownList2.Items.Clear();
            DropDownList2.Items.Add("chicken");
            DropDownList2.Items.Add("duck");
            
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Milk"))
        {
            
             DropDownList2.Items.Clear();
            DropDownList2.Items.Add("cow");
            DropDownList2.Items.Add("goat");
        }
        else
        {
            
             DropDownList2.Items.Clear();
            DropDownList2.Items.Add("chicken meat");
            DropDownList2.Items.Add("duck meat");
        }

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
  {
    DataGrid1.Visible = true;
    filldata();
  }
    public void filldata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from  sellproduct where itemname_or_type='" + DropDownList2.SelectedItem.ToString()+ "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        DataSet ds = new DataSet();
        sda.Fill(ds, "tab1");
        DataGrid1.DataSource = ds.Tables[0].DefaultView;
        DataGrid1.DataBind();
    }

    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label8.Visible= true;
        Label9.Visible = true;
        Label10.Visible = true;
        TextBox1.Visible = true;
        Button1.Visible = true;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into buyproduct values('" + Label6.Text + "','" + Label7.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "','" + DataGrid1.SelectedItem.Cells[0].Text + "','" + DataGrid1.SelectedItem.Cells[1].Text + "','"+TextBox1.Text+"','"+Label10.Text+"','"+DateTime.Now.ToString()+"')", cn);
        cmd.ExecuteNonQuery();
        Label11.Text = "Request has send successfully";
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        int num1= Convert.ToInt32(TextBox1.Text);
        int num2 = Convert.ToInt32(DataGrid1.SelectedItem.Cells[4].Text);
        int num3 = num1 * num2;
        Label10.Text = num3.ToString();
    }
}
