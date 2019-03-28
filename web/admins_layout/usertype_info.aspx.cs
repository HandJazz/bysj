using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class usertype_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TeacherComm context = new TeacherComm();
                var user = context.teacher.ToList();
                GridView1.DataSource = user;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (t_input.Text == "" || t_input.Text == null)
                {
                    TeacherComm context = new TeacherComm();
                    var user = context.teacher.ToList();
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
                        if (user==null) {
                            Response.Write("<script>alert('没有记录！')</script>");
                                }
                        else {
                            var user_ = context.teacher.Where(x => x.gonghao == t_id).ToList();
                            GridView1.DataSource = user_;
                        GridView1.DataBind();}
                        
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int t_gonghao = Int32.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
                TeacherComm context = new TeacherComm();
                var t_rongyu = context.rongyu.Where(x => x.gonghao == t_gonghao).FirstOrDefault();
                if (t_rongyu != null)
                {
                    context.rongyu.Remove(t_rongyu);
                }
                var t_keti = context.keti.Where(x => x.gonghao == t_gonghao).FirstOrDefault();
                if (t_keti != null)
                {
                    context.keti.Remove(t_keti);
                }
                var user = context.teacher.Where(x => x.gonghao == t_gonghao).FirstOrDefault();
                context.teacher.Remove(user);
                context.SaveChanges();
                Response.Redirect("/web/admins_layout/usertype_info.aspx");
            }
            catch {
                Response.Write("<script>alert('删除失败！');window.location.href='usertype_info.aspx';</script>");
            }
        }
    }
}