using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class ViewOrderDetails : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();


        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("Work");
            DropDownList1.Items.Add("Products");
            DropDownList1.Items.Add("UsedProducts");
            DropDownList1.Items.Add("Food");
        }

    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
       string bid = DataGrid1.SelectedItem.Cells[0].Text;

        SqlCommand cmd = new SqlCommand("update bookworker set status='cancelled' where bookingid='"+bid+"'", cn);
        cmd.ExecuteNonQuery();
        
        
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Work"))
        {
           
            DataGrid1.Visible = true;
            DataGrid2.Visible = false;
            DataGrid3.Visible = false;
            DataGrid4.Visible = false;
            filldata();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Products"))
        {
           // DataGrid3.Visible = false;
            DataGrid1.Visible = false;
            DataGrid2.Visible = true;
            DataGrid3.Visible = false;
            DataGrid4.Visible = false;
            filldata();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("UsedProducts"))
        {
            DataGrid1.Visible = false;
            DataGrid3.Visible = true;
            DataGrid2.Visible = false;
            DataGrid4.Visible = false;
            filldata();
        }
        else
        {
            DataGrid1.Visible = false;
            DataGrid4.Visible = true;
            DataGrid2.Visible = false;
            DataGrid3.Visible = false;
            filldata();
        }
    }

    public void filldata()
    {
        if (DropDownList1.SelectedItem.ToString().Equals("Work"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from  provider INNER JOIN bookworker ON provider.providerid=bookworker.providerid where bookworker.customerid='" + Session["username"].ToString() + "'", cn);

            DataSet ds = new DataSet();
            sda.Fill(ds, "tab1");
            DataGrid1.DataSource = ds.Tables[0].DefaultView;
            DataGrid1.DataBind();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Products"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from  provider INNER JOIN buyproduct ON provider.providerid=buyproduct.providerid where buyproduct.customerid='" + Session["username"].ToString() + "'", cn);

            DataSet ds = new DataSet();
            sda.Fill(ds, "tab2");
            DataGrid2.DataSource = ds.Tables[0].DefaultView;
            DataGrid2.DataBind();
        }
        else if (DropDownList1.SelectedItem.ToString().Equals("UsedProducts"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from provider INNER JOIN buyusedproduct ON provider.providerid=buyusedproduct.providerid where buyusedproduct.customerid='" + Session["username"].ToString() + "'", cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tab3");
            DataGrid3.DataSource = ds.Tables[0].DefaultView;
            DataGrid3.DataBind();
        }
        else
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from provider INNER JOIN bookfood ON provider.providerid=bookfood.providerid where bookfood.customerid='" + Session["username"].ToString() + "'", cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tab3");
            DataGrid4.DataSource = ds.Tables[0].DefaultView;
            DataGrid4.DataBind();
        }
    }
    protected void DataGrid4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

  
}