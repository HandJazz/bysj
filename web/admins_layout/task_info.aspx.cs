using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class task_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TeacherComm context = new TeacherComm();
                var keti = context.keti.ToList();
                GridView1.DataSource = keti;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (k_title.Text == "" || k_title.Text == null)
                {
                    TeacherComm context = new TeacherComm();
                    var keti_ = context.keti.ToList();
                    GridView1.DataSource = keti_;
                    GridView1.DataBind();
                }
                else
                {
                    string _title = k_title.Text;
                    TeacherComm context = new TeacherComm();
                    var keti_ = context.keti.Where(x => x.title == _title).FirstOrDefault();
                    if (keti_==null) {
                        Response.Write("<script>alert('没有记录！')</script>");
                    }
                    else
                    {
                        var keti__ = context.keti.Where(x => x.title == _title).ToList();
                           GridView1.DataSource = keti__;
                        GridView1.DataBind();
                        
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