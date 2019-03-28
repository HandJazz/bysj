using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.users_layout
{
    public partial class work_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack&&Session["id"] != null)
            {
                int id = Int32.Parse(Session["id"].ToString());
                TeacherComm context = new TeacherComm();
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                TextBox2.Text = user.twork;
                TextBox1.Text = user.twork;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["id"] != null)
                {
                    int id = Int32.Parse(Session["id"].ToString());
                    TeacherComm context = new TeacherComm();
                    var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                    user.twork = TextBox1.Text;
                    context.SaveChanges();
                    Response.Write("<script>alert('编辑成功！')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('编辑失败！')</script>");
            }

        }
    }
}