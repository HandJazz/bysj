using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class user_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack) {
                TeacherComm context = new TeacherComm();
                t_xibu.DataSource = context.xibu.Select(x => x.xibuNa).ToList();
                t_xibu.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                TeacherComm context = new TeacherComm();
                string xibuna = t_xibu.SelectedValue;
                var xibu = context.xibu.Where(x => x.xibuNa == xibuna).FirstOrDefault();
                int xibuid = xibu.ID;
                var user = new teacher();
                user.gonghao = Int32.Parse(t_gonghao.Text);
                user.name = t_name.Text;
                user.pwd = t_pwd.Text;
                user.sex = t_sex.SelectedValue;
                user.usertype = t_usertype.Text;
                user.xibuId = xibuid;
                context.teacher.Add(user);
                context.SaveChanges();
                Response.Write("<script>alert('用户添加成功！');window.location.href=usertype_info.aspx';</script>");
            }
            catch
            {
                Response.Write("<script>alert('用户添加失败！')</script>");
            }
        }
    }
}