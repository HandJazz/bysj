using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.users_layout
{
    public partial class class_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack&&Session["id"]!=null)
            {
                TeacherComm context = new TeacherComm();
                DropDownList1.DataSource = context.xibu.Select(x=>x.xibuNa).ToList();
                DropDownList1.DataBind();
                int id = Int32.Parse(Session["id"].ToString());
                var user = context.teacher.Where(x=>x.gonghao==id).FirstOrDefault();
                int idd = user.xibuId;
                var xibu = context.xibu.Where(x => x.ID == idd).FirstOrDefault();
                DropDownList1.SelectedValue = xibu.xibuNa;
                t_class.Text = user.classname;
                t_kemu.Text = user.project;
                t_xueqi.Text = user.season;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["id"]!=null)
            {
                
                int id = Int32.Parse(Session["id"].ToString());
                string na = DropDownList1.SelectedValue;
                TeacherComm context = new TeacherComm();
                var xibu_ = context.xibu.Where(x => x.xibuNa == na).FirstOrDefault();
                int idd=xibu_.ID;
                var user = context.teacher.Where(x => x.gonghao == id).FirstOrDefault();
                user.classname = t_class.Text;
                user.project = t_kemu.Text;
                user.xibuId = idd;
                user.season = t_xueqi.SelectedValue;
                context.SaveChanges();
                Response.Write("<script>alert('保存成功！！！')</script>");

            }
        }
    }
}