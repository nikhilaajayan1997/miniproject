using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class admin_sellUSEDproduct : System.Web.UI.Page
{
    SqlConnection cn;
    

    string str;
    SqlCommand com;
    int count;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("Book");
            DropDownList1.Items.Add("Furniture");
            
            DropDownList1.Items.Add("vehicle");
            DropDownList1.Items.Add("ElectronicDevice");
        }

        SqlCommand cmd=new SqlCommand("select name from provider where providerid='"+Session["username"].ToString()+"'",cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label8.Text = (dr["name"].ToString());
        }
        dr.Close();
        Label7.Text = Session["username"].ToString();

        cn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();
        if (DropDownList1.SelectedItem.ToString().Equals("Book"))
        {
            str = "select count(*) from book";
            com = new SqlCommand(str, cn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {

                if (dr.IsDBNull(0))
                {
                    count = 1;
                    Label6.Text = "BK00" + count.ToString();
                }
                else
                {
                    count = Convert.ToInt32(dr.GetValue(0).ToString());
                    count++;
                    Label6.Text = "BK00" + count.ToString();
                }
            }
            dr.Close();
            Button2.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel1.Visible = true;
            Button1.Visible = true;

            DropDownList2.Items.Add("select");
            DropDownList2.Items.Add("Fiction");
            DropDownList2.Items.Add("Novel");
           DropDownList2.Items.Add("Autobiography");
           DropDownList2.Items.Add("Text Book");

        }
        else if (DropDownList1.SelectedItem.ToString().Equals("Furniture"))
        {
            str = "select count(*) from furniture";
            com = new SqlCommand(str, cn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {

                if (dr.IsDBNull(0))
                {
                    count = 1;
                    Label6.Text = "FR00" + count.ToString();
                }
                else
                {
                    count = Convert.ToInt32(dr.GetValue(0).ToString());
                    count++;
                    Label6.Text = "FR00" + count.ToString();
                }
            }
            dr.Close();

            Button2.Visible = false;
            Button1.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;

            DropDownList5.Items.Clear();
                DropDownList5.Items.Add("select");
                DropDownList5.Items.Add("Setty");
                DropDownList5.Items.Add("Sofa");
                DropDownList5.Items.Add("Chair");
                DropDownList5.Items.Add("Almirah");
                DropDownList5.Items.Add("Dining Table");
                DropDownList5.Items.Add("Others");

                DropDownList6.Items.Clear();
                DropDownList6.Items.Add("select");
                DropDownList6.Items.Add("Wood");
                DropDownList6.Items.Add("Metalic");
                DropDownList6.Items.Add("Plastic");
                DropDownList6.Items.Add("Plywood");
            
        }
        else 
        {
            
            str = "select count(*) from vehicle_elec";
            com = new SqlCommand(str, cn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {

                if (dr.IsDBNull(0))
                {
                    count = 1;
                    Label6.Text = "VE00" + count.ToString();
                }
                else
                {
                    count = Convert.ToInt32(dr.GetValue(0).ToString());
                    count++;
                    Label6.Text = "VE00" + count.ToString();
                }
            }
            dr.Close();
            Panel1.Visible = false;
            Button1.Visible = false;
            
            Panel3.Visible = false;
            Button2.Visible = true;
            Panel2.Visible = true;
            if(DropDownList1.SelectedItem.ToString().Equals("vehicle"))
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("select");
                 DropDownList3.Items.Add("Car");
                DropDownList3.Items.Add("Bike");
                DropDownList3.Items.Add("Scooter");
                 DropDownList3.Items.Add("Cycle");

           

            }
            else
            {
                DropDownList3.Items.Clear();
                 DropDownList3.Items.Add("select");
                 DropDownList3.Items.Add("Tv");
                DropDownList3.Items.Add("Mixi");
                DropDownList3.Items.Add("Fridge");
                 DropDownList3.Items.Add("Ac");

           
            }
        }
        cn.Close();
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();
        
        //if (DropDownList1.SelectedItem.ToString().Equals("Book"))
        //{
            string drop1=DropDownList1.SelectedItem.ToString();
            string drop2=DropDownList2.SelectedItem.ToString();
            string str = FileUpload1.FileName;
            string uid = Label6.Text;
            string pid = Label7.Text;
            string pname = Label8.Text;
            string bname = TextBox1.Text;
            string auth = TextBox2.Text;
            string des = TextBox3.Text;
            string pri =TextBox8.Text;
            string sta = "null";
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/uploaded_file/" + str));
            string Image = "~/uploaded_file/" + str;

            Image1.ImageUrl = Image;
            SqlCommand cmd = new SqlCommand("insert into book values(@usedproductid,@providerid,@providername,@category,@bookcategory,@bookname,@author,@photo,@description,@price,@status)", cn);
            cmd.Parameters.AddWithValue("usedproductid", uid);
            cmd.Parameters.AddWithValue("providerid", pid);
            cmd.Parameters.AddWithValue("providername", pname);
            cmd.Parameters.AddWithValue("category", drop1);
            cmd.Parameters.AddWithValue("bookcategory", drop2);
            cmd.Parameters.AddWithValue("bookname",bname);
            cmd.Parameters.AddWithValue("author", auth);
            cmd.Parameters.AddWithValue("photo", Image);
            cmd.Parameters.AddWithValue("description", des);
            cmd.Parameters.AddWithValue("price", pri);
            cmd.Parameters.AddWithValue("status", sta);
            cmd.ExecuteNonQuery();
            Label28.Text="Details submitted successfully";


       // }
        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();
       
        
        string str = FileUpload2.FileName;
        string vehid= Label6.Text;
        string pid = Label7.Text;
        string pname = Label8.Text;
        string category = DropDownList1.SelectedItem.ToString();
        string type= DropDownList3.SelectedItem.ToString();
        string comp=TextBox13.Text;
        string mode = TextBox4.Text;
        string date= TextBox5.Text;
        string des = TextBox6.Text;
        string pri = TextBox7.Text;
        string sta = "null";
        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/uploaded_file/" + str));
        string Image = "~/uploaded_file/" + str;

        Image2.ImageUrl = Image;
        SqlCommand cmd = new SqlCommand("insert into vehicle_elec values(@usedproductid,@providerid,@providername,@category,@vehicle_electriccategory,@company,@model,@description,@date_of_purchase,@photo,@price,@status)", cn);
        cmd.Parameters.AddWithValue("usedproductid", vehid);
        cmd.Parameters.AddWithValue("providerid", pid);
        cmd.Parameters.AddWithValue("providername", pname);
        cmd.Parameters.AddWithValue("category", category);
        cmd.Parameters.AddWithValue("vehicle_electriccategory", type);
        cmd.Parameters.AddWithValue("company", comp);
        cmd.Parameters.AddWithValue("model", mode);
         cmd.Parameters.AddWithValue("description", des);
         cmd.Parameters.AddWithValue("date_of_purchase", date);
        cmd.Parameters.AddWithValue("photo", Image);
       
        cmd.Parameters.AddWithValue("price", pri);
        cmd.Parameters.AddWithValue("status", sta);
        cmd.ExecuteNonQuery();
        Label30.Text = "Details submitted successfully";
        cn.Close();
        }


    protected void Button3_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();

        string str = FileUpload3.FileName;
        string id = Label6.Text;
        string pid = Label7.Text;
        string pname = Label8.Text;
        string category = DropDownList1.SelectedItem.ToString();
        string furcat = DropDownList5.SelectedItem.ToString();
        string mat = DropDownList6.SelectedItem.ToString();
        string date = TextBox9.Text;
       
        string des = TextBox10.Text;
        string pri = TextBox12.Text;
        string sta = "null";
        FileUpload3.PostedFile.SaveAs(Server.MapPath("~/uploaded_file/" + str));
        string Image = "~/uploaded_file/" + str;

        Image3.ImageUrl = Image;
        SqlCommand cmd = new SqlCommand("insert into furniture values(@usedproductid,@providerid,@providername,@category,@fur_category,@material,@description,@photo,@price,@status)", cn);
        cmd.Parameters.AddWithValue("usedproductid", id);
        cmd.Parameters.AddWithValue("providerid", pid);
        cmd.Parameters.AddWithValue("providername", pname);
        cmd.Parameters.AddWithValue("category", category);
        cmd.Parameters.AddWithValue("fur_category", furcat);
        cmd.Parameters.AddWithValue("material", mat);
        cmd.Parameters.AddWithValue("description", des);
        
       
        cmd.Parameters.AddWithValue("photo", Image);

        cmd.Parameters.AddWithValue("price", pri);
        cmd.Parameters.AddWithValue("status", sta);
        cmd.ExecuteNonQuery();
        Label31.Text = "Details submitted successfully";

        cn.Close();
    }
}


