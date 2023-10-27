using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class BuyUsedProduct : System.Web.UI.Page
{
    SqlConnection cn;

    string str;
    SqlCommand com;
    int count;
   // string na;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        str = "select count(*) from buyusedproduct";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                Label3.Text = "BUP00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;


                Label3.Text = "BUP00" + count.ToString();
            }
        }
        dr.Close();

        Label5.Text = Session["username"].ToString();

        SqlCommand cmd = new SqlCommand("select name from customer where customerid='" + Session["username"].ToString() + "'", cn);
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.Read())
        {
            Label9.Text = (dr1["name"].ToString());
        }
        dr1.Close();

        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("Book");
            DropDownList1.Items.Add("Furniture");
            DropDownList1.Items.Add("vehicle");
            DropDownList1.Items.Add("ElectronicDevice");
        }
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedItem.ToString().Equals("Book"))
        {
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;
            SqlCommand cmd1 = new SqlCommand("select * from book where usedproductid='" + DataGrid1.SelectedItem.Cells[0].Text + "'", cn);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                TextBox4.Text = dr.GetValue(5).ToString();
                TextBox5.Text = dr.GetValue(6).ToString();
                TextBox6.Text = dr.GetValue(8).ToString();
            }
            dr.Close();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Furniture"))
        {
            Button1.Visible = false;
            Button2.Visible = false;
            Panel3.Visible = false;
            Panel1.Visible = false;
            Panel4.Visible = true;
            Button3.Visible = true;
            SqlCommand cmd1 = new SqlCommand("select * from furniture where usedproductid='" + DataGrid1.SelectedItem.Cells[0].Text + "'", cn);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                TextBox17.Text = dr.GetValue(5).ToString();
                //TextBox9.Text = dr.GetValue(6).ToString();
                TextBox10.Text = dr.GetValue(6).ToString();

            }
            dr.Close();
        }
        else
        {
            Button1.Visible = false;
            Button3.Visible = false;
            Panel4.Visible = false;
            Panel1.Visible = false;
            Panel3.Visible = true;
            Button2.Visible = true;
            SqlCommand cmd1 = new SqlCommand("select * from vehicle_elec where usedproductid='" + DataGrid1.SelectedItem.Cells[0].Text + "'", cn);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                
                TextBox13.Text = dr.GetValue(5).ToString();
                TextBox14.Text = dr.GetValue(6).ToString();
                TextBox15.Text = dr.GetValue(8).ToString();
                TextBox16.Text = dr.GetValue(7).ToString();
                
            }
            dr.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel1.Visible = false;
        if (DropDownList1.SelectedItem.ToString().Equals("Book"))
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("select");
            DropDownList2.Items.Add("Fiction");
            DropDownList2.Items.Add("Novel");
            DropDownList2.Items.Add("Autobiography");
            DropDownList2.Items.Add("Text Book");
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Furniture"))
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("select");
            DropDownList2.Items.Add("Setty");
            DropDownList2.Items.Add("Sofa");
            DropDownList2.Items.Add("Chair");
            DropDownList2.Items.Add("Almirah");
            DropDownList2.Items.Add("Dining Table");
            DropDownList2.Items.Add("Others");
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("vehicle"))
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("select");
            DropDownList2.Items.Add("Car");
            DropDownList2.Items.Add("Bike");
            DropDownList2.Items.Add("Scooter");
            DropDownList2.Items.Add("Cycle");

        }
        else
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("select");
            DropDownList2.Items.Add("Tv");
            DropDownList2.Items.Add("Mixi");
            DropDownList2.Items.Add("Fridge");
            DropDownList2.Items.Add("Ac");
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        filldata();
        DataGrid1.Visible = true;
    }
    public void filldata()
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Book"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from  book where bookcategory='" + DropDownList2.SelectedItem.ToString() + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
            DataSet ds = new DataSet();
            sda.Fill(ds, "tab1");
            DataGrid1.DataSource = ds.Tables[0].DefaultView;
            DataGrid1.DataBind();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Furniture"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from  furniture where fur_category='" + DropDownList2.SelectedItem.ToString() + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
            DataSet ds = new DataSet();
            sda.Fill(ds, "tab1");
            DataGrid1.DataSource = ds.Tables[0].DefaultView;
            DataGrid1.DataBind();
        }
        else 
        {
            if (DropDownList1.SelectedItem.ToString().Equals("Vehicle"))
            {
                SqlDataAdapter sda = new SqlDataAdapter("select * from  vehicle_elec where vehicle_electriccategory='" + DropDownList2.SelectedItem.ToString() + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
                DataSet ds = new DataSet();
                sda.Fill(ds, "tab1");
                DataGrid1.DataSource = ds.Tables[0].DefaultView;
                DataGrid1.DataBind();
            }
            else
            {
                SqlDataAdapter sda = new SqlDataAdapter("select * from  vehicle_elec where vehicle_electriccategory='" + DropDownList2.SelectedItem.ToString() + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
                DataSet ds = new DataSet();
                sda.Fill(ds, "tab1");
                DataGrid1.DataSource = ds.Tables[0].DefaultView;
                DataGrid1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label33.Text = DataGrid1.SelectedItem.Cells[0].Text;
       
        SqlCommand cmd1 = new SqlCommand("insert into buyusedproduct values('" + Label3.Text + "','" + Label5.Text + "','" + Label9.Text + "','"+DropDownList2.SelectedItem.ToString()+"','" + DataGrid1.SelectedItem.Cells[0].Text + "','" + DataGrid1.SelectedItem.Cells[1].Text + "','" + DataGrid1.SelectedItem.Cells[2].Text + "','" + DateTime.Now.ToString() + "')", cn);
        cmd1.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("delete from furniture where usedproductid='" + Label33.Text + "'", cn);
        cmd2.ExecuteNonQuery();
        
        Label28.Text = "order placed successfully";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label33.Text = DataGrid1.SelectedItem.Cells[0].Text;

        SqlCommand cmd1 = new SqlCommand("insert into buyusedproduct values('" + Label3.Text + "','" + Label5.Text + "','" + Label9.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + DataGrid1.SelectedItem.Cells[0].Text + "','" + DataGrid1.SelectedItem.Cells[1].Text + "','" + DataGrid1.SelectedItem.Cells[2].Text + "','" + DateTime.Now.ToString() + "')", cn);

       
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("delete from furniture where usedproductid='" + Label33.Text + "'", cn);
        cmd2.ExecuteNonQuery();
        
        Label31.Text = "order placed successfully";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label33.Text = DataGrid1.SelectedItem.Cells[0].Text;


        SqlCommand cmd1 = new SqlCommand("insert into buyusedproduct values('" + Label3.Text + "','" + Label5.Text + "','" + Label9.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + DataGrid1.SelectedItem.Cells[0].Text + "','" + DataGrid1.SelectedItem.Cells[1].Text + "','" + DataGrid1.SelectedItem.Cells[2].Text + "','" + DateTime.Now.ToString() + "' )", cn);
      
        cmd1.ExecuteNonQuery();
       
        
        
        Label32.Text = "order placed successfully";
       SqlCommand cmd2 = new SqlCommand("delete from furniture where usedproductid='"+Label33.Text+"'", cn);
        cmd2.ExecuteNonQuery();
    }
}