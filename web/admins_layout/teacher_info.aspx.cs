using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class teacher_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TeacherComm context = new TeacherComm();
                var user = context.teacher.Where(x=>x.usertype=="教师").ToList();
                GridView1.DataSource = user;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (t_input.Text == null|| t_input.Text == "")
                {
                    TeacherComm context = new TeacherComm();
                    var user = context.teacher.Where(x => x.usertype == "教师").ToList();
                    GridView1.DataSource = user;
                    GridView1.DataBind();
                }
                else
                {
                    if (DropDownList1.SelectedValue == "工号查找")
                    {
                        int t_id = Int32.Parse(t_input.Text);
                        TeacherComm context = new TeacherComm();
                        var user = context.teacher.Where(x => x.gonghao == t_id).FirstOrDefault();
                        if (user == null)
                        {
                            Response.Write("<script>alert('没有记录！')</script>");
                        }
                        else
                        {
                            var user_ = context.teacher.Where(x => x.gonghao == t_id).ToList();
                            GridView1.DataSource = user_;
                            GridView1.DataBind();
                        }

                    }
                    else if (DropDownList1.SelectedValue == "姓名查找")
                    {
                        string t_name = t_input.Text;
                        TeacherComm context = new TeacherComm();
                        var user = context.teacher.Where(x => x.name == t_name).FirstOrDefault();
                        if (user == null)
                        {
                            Response.Write("<script>alert('没有记录！')</script>");
                        }
                        else
                        {
                            var user_ = context.teacher.Where(x => x.name == t_name).ToList();
                            GridView1.DataSource = user_;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            catch
            {
                Response.Write("<script>alert('查找失败！')</script>");
            }
            
        }
    }
}