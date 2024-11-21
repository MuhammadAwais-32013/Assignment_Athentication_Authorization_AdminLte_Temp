using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_Athentication_Authorization_AdminLte_Temp
{
    public partial class TeacherPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] != null && Session["Role"].ToString() == "Student")
            {

                Response.Redirect("/StudentPanel.aspx");
            }
            lblName.Text = Session["Name"].ToString();
            lblDepartment.Text = Session["Dep"].ToString();
            lblRole.Text = Session["Role"].ToString();
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("/Login.aspx");
        }
    }
}