using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class bookfood : System.Web.UI.Page
{
    SqlConnection cn;
    string str;
    SqlCommand com;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {

        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();


        str = "select count(*) from bookfood";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                Label13.Text = "BF00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;
                Label13.Text = "BF00" + count.ToString();
            }
        }
        dr.Close();


        Label14.Text = Session["username"].ToString();
        SqlCommand cmd1=new SqlCommand("select * from customer where customerid='"+Session["username"].ToString()+"'",cn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            String name = dr1.GetValue(2).ToString();
            Label15.Text = name;
        }

        dr1.Close();


        if (!Page.IsPostBack)
        {
           
            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("Meals");
            DropDownList1.Items.Add("Beriyani");
            DropDownList1.Items.Add("Chapatti");
            DropDownList1.Items.Add("chicken curry");
            DropDownList1.Items.Add("idili"); 

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataGrid1.Visible = true;
        filldata();

    }

    public void filldata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from  foodprofile where fooditem='" + DropDownList1.SelectedItem.ToString() + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        DataSet ds = new DataSet();
        sda.Fill(ds, "tab1");
        DataGrid1.DataSource = ds.Tables[0].DefaultView;
        DataGrid1.DataBind();
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label7.Visible = true;
        TextBox1.Visible = true;
        Label20.Visible = true;
        Label9.Visible = true;
        TextBox2.Visible = true;
        Button1.Visible = true;
        Label21.Visible = true;
        TextBox4.Visible = true;
        Label18.Visible = true;
        Label17.Visible = true;
        SqlCommand cmd = new SqlCommand("select des from  foodprofile where foodid='" + DataGrid1.SelectedItem.Cells[0].Text + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox4.Text = dr.GetValue(0).ToString();

        }
        dr.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd3 = new SqlCommand("insert into bookfood values('"+Label13.Text+"','"+Label14.Text+"','"+Label15.Text+"',"+TextBox3.Text+",'"+DropDownList1.SelectedItem.ToString()+"','"+TextBox1.Text+"','"+Label17.Text+"','"+TextBox2.Text+"','"+DateTime.Now.ToString()+"','"+DataGrid1.SelectedItem.Cells[1].Text+"')", cn);
        cmd3.ExecuteNonQuery();
        Label18.Text = "Request has send successfully";  
    }
   /* protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
       
    }*/

    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
        int num1 = Convert.ToInt32(TextBox1.Text);
        int num2 = Convert.ToInt32(DataGrid1.SelectedItem.Cells[5].Text);
        int num3 = num1 * num2;

        Label17.Text = num3.ToString();
    }
}