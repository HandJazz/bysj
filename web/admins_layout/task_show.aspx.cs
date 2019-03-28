using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class task_show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!=null)
            {
                int idd =Int32.Parse(Request.QueryString["id"].ToString());
                TeacherComm context = new TeacherComm();
                var t_keti = context.keti.Where(x => x.id == idd).FirstOrDefault();
                int id = t_keti.gonghao;
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                string na = user.name;
                t_shen.Text= t_keti.shenbaodate.ToShortDateString();
                t_start.Text = t_keti.startdate.ToShortDateString();
                t_end.Text = t_keti.enddate.ToShortDateString();
                t_people.Text =" "+ t_keti.people;
                t_teacher.Text =" "+ na;
                t_title.Text =" "+ t_keti.title;
            }
        }
    }
}