using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class bookworker : System.Web.UI.Page
{
    SqlConnection cn;

    string str;
    SqlCommand com;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        str = "select count(*) from bookworker";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                Label13.Text = "B00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;
                Label13.Text = "B00" + count.ToString();
            }
        }
        dr.Close();


        Label14.Text = Session["username"].ToString();
        SqlCommand cmd1 = new SqlCommand("select * from customer where customerid='" + Session["username"].ToString() + "'", cn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            String name = dr1.GetValue(2).ToString();
            Label15.Text = name;
            Label14.Text = Session["username"].ToString();
            Label20.Text = dr1.GetValue(4).ToString();
        }

        dr1.Close();

        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("Plumping");
            DropDownList1.Items.Add("Electrecion");
            DropDownList1.Items.Add("carpenter");
            DropDownList1.Items.Add("painting");
            DropDownList1.Items.Add("welding");
        }
    }


    public void filldata()                      
    {
        SqlDataAdapter sda = new SqlDataAdapter("select providerid,name from  workprofile where work_category='"+DropDownList1.SelectedItem.ToString()+"'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        DataSet ds = new DataSet();
        sda.Fill(ds, "tab1");   
        DataGrid1.DataSource = ds.Tables[0].DefaultView;       
        DataGrid1.DataBind();
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = true;
        Label16.Visible = true;
        Label17.Visible = true;
        Label10.Visible = true;
        Label11.Visible = true;
        Label12.Visible = true;
        Button1.Visible = true;
       
       SqlCommand cmd = new SqlCommand("select phone from  provider where providerid='" + DataGrid1.SelectedItem.Cells[0].Text + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label16.Text =(dr["phone"].ToString());

        }
        dr.Close();

        SqlCommand cmd1 = new SqlCommand("select * from  workprofile where providerid='" + DataGrid1.SelectedItem.Cells[0].Text + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        SqlDataReader dr1 = cmd1.ExecuteReader();
        while(dr1.Read())
        {
        Label17.Text = (dr1["remuneration"].ToString());
        Label10.Text = (dr1["available_from"].ToString());
        Label12.Text = (dr1["available_to"].ToString());
        }
        dr1.Close();

       
        
       

       // SqlCommand cmd1 = new SqlCommand("insert into bookworker values('" + Label13.Text + "','" + Label14.Text + "','" + Label15.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DataGrid1.SelectedItem.Cells[0].Text + "','" + DataGrid1.SelectedItem.Cells[1].Text + "','" + Label17.Text + "','" + DateTime.Now.ToString() + "')", cn);
       // cmd1.ExecuteNonQuery();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {



        SqlCommand cmd1 = new SqlCommand("insert into bookworker values('" + Label13.Text + "','" + Label14.Text + "','" + Label15.Text + "','" + Label20.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DataGrid1.SelectedItem.Cells[0].Text + "','" + DataGrid1.SelectedItem.Cells[1].Text + "','" + Label17.Text + "','" + DateTime.Now.ToString() + "','null')", cn);
        cmd1.ExecuteNonQuery();
        Label18.Visible = true;
        Label18.Text = "You are Successfully registered";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataGrid1.Visible = true;
        filldata();
    }
}