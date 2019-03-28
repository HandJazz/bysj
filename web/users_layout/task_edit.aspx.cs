using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.users_layout
{
    public partial class task_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["id"] != null)
                {
                    int id = Int32.Parse(Session["id"].ToString());
                    TeacherComm context = new TeacherComm();
                    var task = new keti();
                    task.title = t_title.Text;
                    task.people = t_people.Text;
                    task.shenbaodate = Convert.ToDateTime(t_shen.Text);
                    task.startdate = Convert.ToDateTime(t_start.Text);
                    task.enddate = Convert.ToDateTime(t_end.Text);
                    task.gonghao = id;
                    context.keti.Add(task);
                    context.SaveChanges();
                    Response.Write("<script>alert('添加成功！');window.location.href='task_info.aspx';</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('添加成失败！')</script>");
            }
        }
    }
}