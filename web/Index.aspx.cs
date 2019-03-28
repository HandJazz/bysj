using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btn_login_Click(object sender, EventArgs e)
        {


            if (Session["CheckCode"] != null && Session["CheckCode"].ToString() != "")
            {
                if (Session["CheckCode"].ToString().ToLower() != verify.Text.ToLower())
                {
                    Session["CheckCode"] = null;
                    verify.Text = "";
                    Response.Write("<script>alert('验证码输入错误')</script>");
                    return;
                }
                else
                {
                    Entity.TeacherComm context = new TeacherComm();
                    var Login_id = Int32.Parse(login_id.Text);
                    var user = context.teacher.Where(x => x.gonghao == Login_id).FirstOrDefault();
                    if (user != null && user.pwd == login_pwd.Text.Trim())
                    {
                        if (user.usertype == "教师")
                        {
                            Session["CheckCode"] = null;
                            Session["id"] = login_id.Text;
                            Response.Write("<script>alert('欢迎 "+user.name+"老师 登录教师管理系统');window.location.href='Users.aspx'</script>");
                        }
                        else if(user.usertype=="管理员")
                        {
                            Session["CheckCode"] = null;
                            Session["id"] = login_id.Text;
                            Response.Write("<script>alert('欢迎 管理员 登录后台');window.location.href='Admins.aspx'</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('用户被禁用')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('用户名或密码错误！！')</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('请输入验证码！！')</script>");
            }
        }

        protected void btn_empty_Click(object sender, EventArgs e)
        {
            login_id.Text = "";
            login_pwd.Text = "";
            verify.Text = "";
        }
    }
}