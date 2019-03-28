using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class usertype_show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["gonghao"]!=null)
            {
                int id = Int32.Parse(Request.QueryString["gonghao"].ToString());
                TeacherComm context = new TeacherComm(); ;
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                t_gonghao.Text = user.gonghao.ToString();
                t_name.Text = user.name;
                t_sex.Text = user.name2;
                t_usertype.SelectedValue = user.usertype;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(Request.QueryString["gonghao"].ToString());
            TeacherComm context = new TeacherComm(); ;
            var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
            user.usertype = t_usertype.SelectedValue;
            context.SaveChanges();
            Response.Write("<script>alert('修改成功！')</script>");
        }
    }
}