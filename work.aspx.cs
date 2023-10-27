using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class work : System.Web.UI.Page
{
    SqlConnection cn;

    SqlDataReader dr;
    string str;
    SqlCommand com;
   // int count;
    static int cnt = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=F:\\mini project\\App_Data\\city360.mdf;Integrated Security=True");
        cn.Open();
        

       /*  str = "select count(*) from workprofile";
          com = new SqlCommand(str, cn);
          SqlDataReader dr = com.ExecuteReader();
          if (dr.Read())
          {

              if (dr.IsDBNull(0))
              {
                  count = 1;
                  Label6.Text = "W00" + count.ToString();
              }
              else
              {
                  count = Convert.ToInt32(dr.GetValue(0).ToString());
                  count++;
                  Label6.Text = "W00" + count.ToString();
              }
          }
          dr.Close();*/


        com = new SqlCommand("select count(*) from workprofile", cn);

        SqlDataReader dr = com.ExecuteReader();       
        if (dr.Read())
        {
            cnt = Convert.ToInt32(dr.GetValue(0).ToString());
        }
        cnt++;

        Session["workid"] = "W00" + cnt;
        Label6.Text = "W00" + cnt;

        dr.Close();

        Boolean flag = true;
        while (flag)
        {
            SqlCommand com1 = new SqlCommand("select workid from workprofile where workid='" + Session["workid"].ToString() + "'", cn);

            SqlDataReader dr1 = com1.ExecuteReader();       
           
            if (dr1.Read())
            {

                dr1.Close();
                cnt++;

                Session["workid"] = "W00" + cnt;
                Label6.Text = "W00" + cnt;

            }
            else
            {
                dr1.Close();
                flag = false;
                break;
            }

        }




        Label10.Text = Session["username"].ToString();
        SqlCommand cmd1=new SqlCommand("select * from provider where providerid='"+Session["username"].ToString()+"'",cn);
        SqlDataReader dr2 = cmd1.ExecuteReader();
        if (dr2.Read())
        {
            String name = dr2.GetValue(2).ToString();
            Label7.Text = name;
        }

        dr2.Close();

       


        if (!Page.IsPostBack)
        {
            DropDownList3.Items.Add("select");
            DropDownList3.Items.Add("Plumping");
            DropDownList3.Items.Add("Electrecion");
            DropDownList3.Items.Add("carpenter");
            DropDownList3.Items.Add("painting");
            DropDownList3.Items.Add("welding");

            DropDownList1.Items.Add("select");
            DropDownList1.Items.Add("am");
            DropDownList1.Items.Add("pm");

            DropDownList2.Items.Add("select");
            DropDownList2.Items.Add("am");
            DropDownList2.Items.Add("pm");

            Label11.Visible = true;

        }




        if (!Page.IsPostBack)
        {
            DropDownList5.Items.Add("am");
            DropDownList5.Items.Add("pm");


            DropDownList6.Items.Add("am");
            DropDownList6.Items.Add("pm");

        }
    }






    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select count(providerid) from workprofile where providerid='"+Session["username"].ToString()+"'",cn);
        Int32 cnt=(Int32)cmd.ExecuteScalar();
        if(cnt==1)
        {
            
                Label19.Text = "You are already registered";
            }
            else
            {
                SqlCommand cmd1 = new SqlCommand("insert into workprofile values('" + Label6.Text + "','" + Label10.Text + "','" + Label7.Text + "','" + DropDownList3.SelectedItem.ToString() + "','" + TextBox2.Text + DropDownList1.SelectedItem.ToString() + "','" + TextBox3.Text + DropDownList2.SelectedItem.ToString() + "'," + TextBox4.Text + ")", cn);
                cmd1.ExecuteNonQuery();
                Label11.Visible = true;
                Label11.Text = "You are Successfully registered";
            //Label11.Text = "You are Successfully registered";
            }
        


       /* SqlCommand cmd1 = new SqlCommand("insert into workprofile values('" + Label6.Text + "','" + Label10.Text + "','" + Label7.Text + "','" + DropDownList3.SelectedItem.ToString() + "','" + TextBox2.Text + DropDownList1.SelectedItem.ToString() + "','" + TextBox3.Text + DropDownList2.SelectedItem.ToString() + "'," + TextBox4.Text + ")", cn);
        cmd1.ExecuteNonQuery();
        Label11.Visible = true;
        Label11.Text = "You are Successfully registered";*/

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
       // string txt = TextBox5.Text+DropDownList1.Text;
        
        

        SqlCommand cmd1 = new SqlCommand("update workprofile set available_from='"+TextBox5.Text+DropDownList5.SelectedItem.ToString()+"',available_to='" + TextBox6.Text + DropDownList6.SelectedItem.ToString() + "' where workid='" + Label20.Text+ "'", cn);

            cmd1.ExecuteNonQuery();

            Label16.Text = "Updated successfully";
        
        
    }

   


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton2.Visible = false;

        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;

        Label5.Visible = false;
        Label8.Visible = false;
        Label12.Visible = false;
        Label11.Visible = false;
        Label15.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label9.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label10.Visible = false;
        Label4.Visible = false;
        Label17.Visible = true;
        DropDownList1.Visible = false;
        DropDownList2.Visible = false;
        DropDownList3.Visible = false;
        
        Button1.Visible = false;
        Button3.Visible = false;

        Label13.Visible = true;
        Label14.Visible = true;
        Label16.Visible = true;

        TextBox5.Visible = true;
        TextBox6.Visible = true;
        //DropDownList4.Visible = true;
        DropDownList5.Visible = true;
        DropDownList6.Visible = true;
        Button2.Visible = true;
        //DropDownList4.Visible = true;

        SqlCommand cmd = new SqlCommand("select * from workprofile where providerid='" + Session["username"].ToString() + "'", cn);
        SqlDataReader dr2 = cmd.ExecuteReader();
        while (dr2.Read())
        {


            //DropDownList4.Items.Add("select");
            Label20.Text = dr2.GetValue(0).ToString();
        }
        dr2.Close();

       
    }
    
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Label19.Text="";
       // DropDownList4.Visible = true;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        TextBox6.Visible = false;
        
        DropDownList1.Visible = false;
        DropDownList2.Visible = false;
        DropDownList3.Visible = false;
        DropDownList5.Visible = false;
        DropDownList6.Visible = false;
       

        Label4.Visible=false;
        Label5.Visible=false;
        Label8.Visible =false;
        Label12.Visible = false;
        Label11.Visible = false;
        Label3.Visible = false;
        Label3.Visible = false;
        Label9.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label10.Visible = false;
        Label2.Visible = false;
        Label17.Visible = true;

        Button1.Visible = false;
        Button2.Visible = false;

        LinkButton1.Visible = false;

        Button3.Visible = true;
        //DropDownList4.Visible = true;
        //TextBox5.Visible = true;
        Label16.Visible = true;
        Label15.Visible = true;
        TextBox7.Visible = true;

        SqlCommand cmd = new SqlCommand("select * from workprofile where providerid='" + Session["username"].ToString() + "'", cn);
        SqlDataReader dr2 = cmd.ExecuteReader();
        while (dr2.Read())
        {


            //DropDownList4.Items.Add("select");
            Label20.Text=dr2.GetValue(0).ToString();
        }
        dr2.Close();
        
    }
   /* protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select workid from workprofile where work_category='" + DropDownList4.SelectedItem.ToString() + "'", cn);
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.Read())
        {
            Label6.Text = dr1.GetValue(0).ToString();
        }
        dr1.Close();
    }*/


    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlCommand cmd1 = new SqlCommand("update workprofile set remuneration='" + TextBox7.Text + "' where workid='" + Label20.Text.ToString() + "'", cn);
            cmd1.ExecuteNonQuery();
        
        
        Label16.Text = "Updated successfully";

    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string st = "select count(name) from workprofile where providerid='" + Session["username"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(st,cn);
        Int32 cnt = Convert.ToInt32(cmd.ExecuteScalar());
        if(cnt>1)
        {
            Label18.Visible = true;
            
                Label18.Text = "Already registered";
        }
           
    }
 }
