using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.users_layout
{
    public partial class edit_pwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["id"]!=null)
            {
                int id = Int32.Parse(Session["id"].ToString());
                TeacherComm context = new TeacherComm();
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                t_gonghao.Text = user.gonghao.ToString();
                t_name.Text = user.name;
                t_sex.Text = user.sex;
                t_usertype.Text = user.usertype;
            }
        }

        protected void btn_1_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                int id = Int32.Parse(Session["id"].ToString());
                TeacherComm context = new TeacherComm();
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                if (t_pwd.Text == user.pwd)
                {
                    user.pwd = t_pwd2.Text;
                    context.SaveChanges();
                    Session.Remove("id");
                    Response.Write("<script>alert('修改成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('密码不正确！')</script>");
                }
            }
        }

        protected void t_pwd_TextChanged(object sender, EventArgs e)
        {

            TeacherComm context = new TeacherComm();
            if (Session["id"] != null)
            {
                int id = Int32.Parse(Session["id"].ToString());
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
            if (t_pwd.Text == user.pwd)
                {
                    test1.Text = "密码正确！";
                }
                else
                {
                    test1.Text = "密码错误！";
                }
            }
        }
    }
}