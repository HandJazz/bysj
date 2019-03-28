using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.users_layout
{
    public partial class honor_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void h_add_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["id"] != null)
                {
                    int id = Int32.Parse(Session["id"].ToString());
                    TeacherComm context = new TeacherComm();
                    var honor = new rongyu();
                    honor.gonghao = id;
                    honor.Adddate = Convert.ToDateTime(h_date.Text);
                    honor.text = h_name.Text;
                    context.rongyu.Add(honor);
                    context.SaveChanges();
                    Response.Write("<script>alert('添加成功！');window.location.href='honor_info.aspx';</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('添加失败！')</script>");
            }
        }
    }
}