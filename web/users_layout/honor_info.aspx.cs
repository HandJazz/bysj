using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.users_layout
{
    public partial class honor_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack&&Session["id"]!=null)
            {
                int id = Int32.Parse(Session["id"].ToString());
                TeacherComm context = new TeacherComm();
                //GridView1.DataSource = (from a in context.rongyu
                //                        where a.gonghao == id
                //                        select new { a.title, a.text }).ToList();
                GridView1.DataSource = context.rongyu.Where(x => x.gonghao == id).ToList();
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                TeacherComm context = new TeacherComm();
                int idd = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
                var honor = context.rongyu.Where(x => x.ID == idd).FirstOrDefault();
                context.rongyu.Remove(honor);
                context.SaveChanges();
                Response.Write("<script>alert('删除成功！');window.location.href='honor_info.aspx';</script>");
            }
            catch
            {
                Response.Write("<script>alert('删除失败！')</script>");
            }
        }
    }
}