using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_Athentication_Authorization_AdminLte_Temp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"]!=null && Session["Role"].ToString() == "Teacher")
            {

                Response.Redirect("/TeacherPanel.aspx");
            }

            else if (Session["Role"] != null && Session["Role"].ToString() == "Student")
            {

                Response.Redirect("/StudentPanel.aspx");
            }

            
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string ConStr = "Data Source=HPI5\\SQLEXPRESS;Initial Catalog=DB2;Integrated Security=True;Encrypt=False";
            SqlConnection con = new SqlConnection(ConStr);
            con.Open();
            string query = "select Name, Department,Role from Registration where Email='" + txtemail.Text + "' and Password='" + txtpss.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Session["Name"] = reader["Name"].ToString();
                    Session["Dep"] = reader["Department"].ToString();
                    Session["Role"] = reader["Role"].ToString();
                }
                if (Session["Role"] != null && Session["Role"].ToString() == "Teacher")
                {
                    Response.Redirect("/TeacherPanel.aspx");
                }
                else if (Session["Role"] != null && Session["Role"].ToString() == "Student")
                {
                    Response.Redirect("/StudentPanel.aspx");
                }
            }

        }
    }
}