using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web
{
    public partial class Admins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["id"] != null)
            {
                int id = int.Parse(Session["id"].ToString());
                TeacherComm context = new TeacherComm();
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                t_name.Text = user.name;
                t_type.Text = user.usertype;
            }
            else
            {
                Response.Redirect("/web/Index.aspx");
            }
        }
    }
}