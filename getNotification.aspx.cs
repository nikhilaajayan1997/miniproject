using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class getNotification : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        filldata();
    }

    public void filldata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from  notification where customerid='" +Session["username"].ToString() + "'", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        DataSet ds = new DataSet();
        sda.Fill(ds, "tab1");
        DataGrid1.DataSource = ds.Tables[0].DefaultView;
        DataGrid1.DataBind();
    }

    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox1.Visible = true;
        SqlCommand cmd=new SqlCommand("select * from notification where notificationid='"+DataGrid1.SelectedItem.Cells[0].Text+"'",cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text=(dr["notification"].ToString());
        }
        dr.Close();
    }
}