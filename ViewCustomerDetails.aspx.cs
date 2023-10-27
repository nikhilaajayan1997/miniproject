using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class ViewCustomerDetails : System.Web.UI.Page
{
    SqlConnection cn;

    
    string str;
    SqlCommand com;
    int count;
    string notify;
    string cusid;



    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();


        str = "select count(*) from notification";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                notify = "N00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;


                notify = "N00" + count.ToString();
            }
        }
        dr.Close();


        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("Work");
            DropDownList1.Items.Add("Products");
            DropDownList1.Items.Add("UsedProducts");
            
            DropDownList1.Items.Add("Food");

        }


    }                                                             //binary data would be truncated error=add .tostring() to session variable


    public void filldata()
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Work"))
        {
            TextBox2.Text = "";
            Label8.Text = "";
            SqlDataAdapter sda = new SqlDataAdapter("select * from  customer INNER JOIN bookworker ON customer.customerid=bookworker.customerid where bookworker.providerid='" + Session["username"].ToString() + "'", cn);

            DataSet ds = new DataSet();
            sda.Fill(ds, "tab1");
            DataGrid1.DataSource = ds.Tables[0].DefaultView;
            DataGrid1.DataBind();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Products"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from  customer INNER JOIN buyproduct ON customer.customerid=buyproduct.customerid where buyproduct.providerid='" + Session["username"].ToString() + "'", cn);

            DataSet ds = new DataSet();
            sda.Fill(ds, "tab2");
            DataGrid2.DataSource = ds.Tables[0].DefaultView;
            DataGrid2.DataBind();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("UsedProducts"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from customer INNER JOIN buyusedproduct ON customer.customerid=buyusedproduct.customerid where buyusedproduct.providerid='" + Session["username"].ToString() + "'", cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tab3");
            DataGrid3.DataSource = ds.Tables[0].DefaultView;
            DataGrid3.DataBind();
        }
        else
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from bookfood where providerid='" + Session["username"].ToString() + "'", cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tab3");
            DataGrid4.DataSource = ds.Tables[0].DefaultView;
            DataGrid4.DataBind();
        }
    }
   

    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Visible = true;

        Label6.Visible = true;
        TextBox2.Visible = true;
    }
   



    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedItem.ToString().Equals("Work"))
        {
        SqlCommand cmd2 = new SqlCommand("select providername from bookworker where providerid='" + Session["username"].ToString() + "'", cn);
        SqlDataReader dr1 = cmd2.ExecuteReader();
        if (dr1.Read())
        {
            Label9.Text = (dr1["providername"].ToString());
           
        }
             dr1.Close();
          
        SqlCommand cmd1 = new SqlCommand("insert into notification values('"+notify.ToString()+"','"+Session["username"].ToString()+"','"+Label9.Text+"','"+DataGrid1.SelectedItem.Cells[1].Text +"','"+TextBox2.Text+"')",cn);
        cmd1.ExecuteNonQuery();
        Label8.Text = "successfully notified";
        }

        else if(DropDownList1.SelectedItem.ToString().Equals("Products"))
        {
            SqlCommand cmd2 = new SqlCommand("select name from provider where providerid='" + Session["username"].ToString() + "'", cn);
            SqlDataReader dr1 = cmd2.ExecuteReader();
            if (dr1.Read())
            {
                Label9.Text = (dr1["name"].ToString());
               
            }
            dr1.Close();

            SqlCommand cmd1 = new SqlCommand("insert into notification values('" + notify.ToString() + "','" + Session["username"].ToString() + "','" + Label9.Text+ "','" + DataGrid2.SelectedItem.Cells[1].Text + "','" + TextBox2.Text + "')", cn);
            cmd1.ExecuteNonQuery();
            Label8.Text = "successfully notified";
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("UsedProducts"))
        {
            SqlCommand cmd2 = new SqlCommand("select name from provider where providerid='" + Session["username"].ToString() + "'", cn);
            SqlDataReader dr1 = cmd2.ExecuteReader();
            if (dr1.Read())
            {
                Label9.Text = (dr1["name"].ToString());

            }
            dr1.Close();
            
            
            SqlCommand cmd1 = new SqlCommand("insert into notification values('" + notify.ToString() + "','" + Session["username"].ToString() + "','" + Label9.Text + "','" + DataGrid3.SelectedItem.Cells[1].Text + "','" + TextBox2.Text + "')", cn);
            cmd1.ExecuteNonQuery();
            Label8.Text = "successfully notified";
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand("select name from provider where providerid='" + Session["username"].ToString() + "'", cn);
            SqlDataReader dr1 = cmd2.ExecuteReader();
            if (dr1.Read())
            {
                Label9.Text = (dr1["name"].ToString());

            }
            dr1.Close();

            SqlCommand cmd1 = new SqlCommand("insert into notification values('" + notify.ToString() + "','" + Session["username"].ToString() + "','" + Label9.Text+ "','" + DataGrid4.SelectedItem.Cells[1].Text + "','" + TextBox2.Text + "')", cn);
            cmd1.ExecuteNonQuery();
            Label8.Text = "successfully notified";
        }
       

    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Work"))
        {
            TextBox2.Text = "";
            Label8.Text = "";
            DataGrid4.Visible = false;
            DataGrid3.Visible = false;
            DataGrid2.Visible = false;
            DataGrid1.Visible = true;
            filldata();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Products"))
        {
            TextBox2.Text = "";
            Label8.Text = "";
            DataGrid4.Visible = false;
            DataGrid3.Visible = false;
            DataGrid1.Visible = false;
            DataGrid2.Visible = true;
            
            filldata();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("UsedProducts"))
        {
            TextBox2.Text = "";
            Label8.Text = "";
            DataGrid4.Visible = false;
            DataGrid1.Visible = false;
            DataGrid3.Visible = true;
            DataGrid2.Visible = false;
            filldata();
        }
        else
        {
            TextBox2.Text = "";
            Label8.Text = "";
            DataGrid3.Visible = false;
            DataGrid1.Visible = false;
            DataGrid4.Visible = true;
            DataGrid2.Visible = false;
            filldata();
        }
    }


    protected void DataGrid2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Button1.Visible = true;

        Label6.Visible = true;
        TextBox2.Visible = true;
        


    }

    protected void DataGrid3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Visible = true;

        Label6.Visible = true;
        TextBox2.Visible = true;
        
    }
    protected void DataGrid4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Visible = true;

        Label6.Visible = true;
        TextBox2.Visible = true;
    }
}