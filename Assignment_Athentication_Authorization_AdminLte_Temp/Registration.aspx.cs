using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_Athentication_Authorization_AdminLte_Temp
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] != null && Session["Role"].ToString() == "Teacher")
            {

                Response.Redirect("/TeacherPanel.aspx");
            }

            else if (Session["Role"] != null && Session["Role"].ToString() == "Student")
            {

                Response.Redirect("/StudentPanel.aspx");
            }
            
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            string ConStr = "Data Source=HPI5\\SQLEXPRESS;Initial Catalog=DB2;Integrated Security=True;Encrypt=False";
            SqlConnection con = new SqlConnection(ConStr);

            
                con.Open();

              
                string role = rbStudent.Checked ? "Student" : rbTeacher.Checked ? "Teacher" : "";
                string dep = ddlDepartment.SelectedItem.ToString();
                
                string qry = "INSERT INTO Registration (Name, Email, Password, Department, Role) " +
                             "VALUES ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + dep + "','" + role + "')";

               
                SqlCommand cmd = new SqlCommand(qry, con);

                
                if (cmd.ExecuteNonQuery() > 0)
                {
                    Response.Write("<script>alert('Registered Sucess');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Registered Failed');</script>");
                }


           
}
    }
}