using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class viewComplaint : System.Web.UI.Page
{
    SqlConnection cn;

    string str;
    SqlCommand com;
    int count;
    string notify;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        str = "select count(*) from warnning";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                notify = "WRN00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;


                notify = "WRN00" + count.ToString();
            }
        }
        dr.Close();


        filldata();
    }
    public void filldata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from  complaint", cn);   //to drop bulk amt of data in a table from database we use sql data adapter
        DataSet ds = new DataSet();
        sda.Fill(ds, "tab1");
        DataGrid1.DataSource = ds.Tables[0].DefaultView;
        DataGrid1.DataBind();
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Visible = true;
        LinkButton1.Visible = true;
        SqlCommand cmd = new SqlCommand("select * from complaint where complaintid='" + DataGrid1.SelectedItem.Cells[0].Text+ "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text =(dr["complaint"].ToString());
        }
        dr.Close();
       
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        SqlCommand cmd1 = new SqlCommand("insert into warnning values('" + notify.ToString() + "','" + DataGrid1.SelectedItem.Cells[2].Text + "','" + DataGrid1.SelectedItem.Cells[3].Text + "','" + TextBox1.Text + "')", cn);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("delete from complaint where complaintid='" + DataGrid1.SelectedItem.Cells[0].Text + "'", cn);
        cmd2.ExecuteNonQuery();

        Label2.Text = "Warnning send successfully";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = true;
        Button1.Visible = true;
    }
}