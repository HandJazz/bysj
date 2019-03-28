using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.users_layout
{
    public partial class task_show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!=null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                TeacherComm context = new TeacherComm(); ;
                var task = context.keti.Where(x => x.id == id).ToList();
                GridView1.DataSource = task;
                GridView1.DataBind();
                //t_title.Text = task.title;
                //t_people.Text = task.people;
                //t_shen.Text = task.shenbaodate.ToString();
                //t_start.Text = task.startdate.ToString();
                //t_end.Text = task.enddate.ToString();
            }
        }
    }
}