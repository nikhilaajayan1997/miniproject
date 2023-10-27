using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class complaint : System.Web.UI.Page
{

    SqlConnection cn;

    string str;
    SqlCommand com;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        str = "select count(*) from complaint";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                Label5.Text= "CMP00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;
                Label5.Text = "CMP00" + count.ToString();
            }
        }
        dr.Close();


        Label6.Text = Session["username"].ToString();

     
        filldata();
    }

    public void filldata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select providerid,providername from  notification where customerid='" + Session["username"].ToString() + "' group by  providername,providerid", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        DataSet ds = new DataSet();
        sda.Fill(ds, "tab1");
        DataGrid1.DataSource = ds.Tables[0].DefaultView;
        DataGrid1.DataBind();
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label4.Visible = true;
        TextBox1.Visible = true;
        Button1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd1 = new SqlCommand("insert into complaint values('" + Label5.Text + "','" + Label6.Text + "','" + DataGrid1.SelectedItem.Cells[0].Text + "','" + DataGrid1.SelectedItem.Cells[1].Text + "','" + TextBox1.Text + "')", cn);
        cmd1.ExecuteNonQuery();
        Label7.Visible = true;
        Label7.Text = "Complaint sbmitted successfully";
    }
}