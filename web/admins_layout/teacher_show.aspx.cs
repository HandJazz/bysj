using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class teacher_show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idd"]!=null)
            {
                int idd =Int32.Parse(Request.QueryString["idd"].ToString());
                TeacherComm context = new TeacherComm();
                var user = context.teacher.Where(x=>x.gonghao==idd).FirstOrDefault();
                int id = user.xibuId;
                var xibu_ = context.xibu.Where(x=>x.ID==id).FirstOrDefault();
                string xibuna = xibu_.xibuNa;
                t_gonghao.Text = user.gonghao.ToString();
                t_name.Text = user.name;
                t_name2.Text = user.name2;
                t_sex.Text = user.sex;
                t_xibu.Text = xibuna;
                t_shenfennu.Text = user.shenfennu;
                if (user.birthday == null) {
                    t_birthdate.Text = "";
                }
                else
                {
                    t_birthdate.Text = user.birthday.Value.ToShortDateString();
                }
                t_birthplace.Text = user.birthplace;
                t_cellphone.Text = user.cellphone;
                t_classname.Text = user.classname;
                t_hunyin.Text = user.hunyin;
                t_jiankang.Text = user.jiankang;
                t_jiguan.Text = user.jiguan;
                t_minzu.Text = user.minzu;
                t_project.Text = user.project;
                t_season.Text = user.season;
                t_teachertype.Text = user.teachertype;
                if (user.worktime == null) {
                    t_worktime.Text = "";
                }
                else { t_worktime.Text = user.worktime.Value.ToShortDateString();}
                
                t_zhengzhi.Text = user.zhengzhi;
            }
        }
    }
}