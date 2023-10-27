using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class feedback1 : System.Web.UI.Page
{
    SqlConnection cn;
    string str;
    SqlCommand com;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();


        str = "select count(*) from feedback";
        com = new SqlCommand(str, cn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {

            if (dr.IsDBNull(0))
            {
                count = 1;
                Label3.Text = "FB00" + count.ToString();
            }
            else
            {
                count = Convert.ToInt32(dr.GetValue(0).ToString());
                count++;
                Label3.Text = "FB00" + count.ToString();
            }
        }
        dr.Close();

        Label5.Text = Session["username"].ToString();

        if (!Page.IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("select providerid from notification where customerid='" + Session["username"].ToString() + "' group by providerid", cn);
            SqlDataReader dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                DropDownList1.Items.Add(dr1["providerid"].ToString());
            }
            dr1.Close();
        }


        SqlCommand cmd1 = new SqlCommand("select * from provider where providerid='" + DropDownList1.SelectedItem.ToString() + "'", cn);
        SqlDataReader dr2 = cmd1.ExecuteReader();
        if (dr2.Read())
        {
            Label9.Text = (dr2["name"].ToString());
        }
        dr2.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = new SqlCommand("insert into feedback values('" + Label3.Text + "','" + Label5.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + DateTime.Now.ToString() + "')", cn);
        cmd1.ExecuteNonQuery();
        Label10.Text = "Feedback send successfully";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}