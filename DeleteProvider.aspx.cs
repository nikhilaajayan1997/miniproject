using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;

public partial class DeleteProvider : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        filldata1();
        
    }
    public void filldata1()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select providerid from  warnning group by providerid", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        DataSet ds = new DataSet();
        sda.Fill(ds, "tab2");
        DataGrid2.DataSource = ds.Tables[0].DefaultView;
        DataGrid2.DataBind();
    }
    
    
   
   
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Visible = true;
        TextBox1.Visible= true;
        Button1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = new SqlCommand("update provider set enddate='" + TextBox1.Text + "' where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd1.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("delete from users where username='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd2.ExecuteNonQuery();

        SqlCommand cmd3 = new SqlCommand("delete from warnning where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd3.ExecuteNonQuery();
        SqlCommand cmd4 = new SqlCommand("delete from workprofile where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd4.ExecuteNonQuery();

        SqlCommand cmd11 = new SqlCommand("delete from bookworker where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd11.ExecuteNonQuery();

        SqlCommand cmd9 = new SqlCommand("delete from buyproduct where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd9.ExecuteNonQuery();

        SqlCommand cmd5 = new SqlCommand("delete from sellproduct where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd5.ExecuteNonQuery();

        SqlCommand cmd6 = new SqlCommand("delete from bookfood where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd6.ExecuteNonQuery();

        SqlCommand cmd8 = new SqlCommand("delete from foodprofile where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd8.ExecuteNonQuery();

        SqlCommand cmd7= new SqlCommand("delete from notification where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd7.ExecuteNonQuery();

       

       

        SqlCommand cmd10 = new SqlCommand("delete from buyusedproduct where providerid='" + DataGrid2.SelectedItem.Cells[0].Text + "'", cn);
        cmd10.ExecuteNonQuery();

        

        Label4.Text = "Removed successfully";
    }
    public void filldata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from  provider where providerid='" + DataGrid2.SelectedItem.Cells[0] .Text+ "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        DataSet ds = new DataSet();
        sda.Fill(ds, "tab1");
        DataGrid1.DataSource = ds.Tables[0].DefaultView;
        DataGrid1.DataBind();
    }

    protected void DataGrid2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataGrid1.Visible = true;
        filldata();
    }
}