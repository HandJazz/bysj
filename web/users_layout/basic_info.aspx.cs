using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.users_layout
{
    public partial class basic_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack&& Session["id"] != null)
            {
                TeacherComm context = new TeacherComm();
                int id = Int32.Parse(Session["id"].ToString());
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                t_number.Text = user.gonghao.ToString();
                t_name.Text = user.name;
                t_name2.Text = user.name2;
                t_sex.SelectedValue = user.sex.ToString();
                t_category.Text = user.shenfennu;
                t_jiguan.Text = user.jiguan;
                t_minzu.Text =user.minzu;
                t_hunyiin.SelectedValue = user.hunyin;
                if (user.worktime==null)
                {
                    t_worktime.Text = "";
                }
                else { t_worktime.Text = user.worktime.Value.ToShortDateString(); }
                if (user.birthday==null) {
                    t_birthday.Text = "";
                }
                else
                {
                    t_birthday.Text = user.birthday.Value.ToShortDateString();
                }
                
                t_birthplace.Text = user.birthplace;
                t_zhengzhi.Text = user.zhengzhi;
                t_health.Text = user.jiankang;
                t_cate.SelectedValue = user.teachertype;
                t_phone.Text = user.cellphone;
                t_mail.Text = user.mail;
                
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            TeacherComm context = new TeacherComm();
            int id = Int32.Parse(Session["id"].ToString());
            //var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
            var user = context.teacher.Find(id);
            try
            {
                user.gonghao = Int32.Parse(t_number.Text.Trim());
                user.name = t_name.Text;
                user.name2 = t_name2.Text;
                user.sex = t_sex.SelectedValue;
                user.shenfennu = t_category.Text.Trim();
                user.jiguan = t_jiguan.Text;
                user.minzu = t_minzu.Text;
                user.hunyin = t_hunyiin.SelectedValue;
                //var aa = Request["t_worktime"].ToString();
                user.worktime = Convert.ToDateTime(t_worktime.Text);
                //var bb = Request["t_birthday"].ToString();
                user.birthday = Convert.ToDateTime(t_birthday.Text);
                user.birthplace = t_birthplace.Text;
                user.zhengzhi = t_zhengzhi.Text;
                user.jiankang = t_health.Text;
                user.teachertype = t_cate.SelectedValue;
                user.cellphone =t_phone.Text;
                user.mail = t_mail.Text;
                context.SaveChanges();
                Response.Write("<script>alert('保存成功！')</script>");
            }
            catch
            {
                Response.Write("<script>alert('保存失败！！！')</script>");
            }
        }
    }
}