using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class xibu_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack&&Request.QueryString["idd"]!=null)
            {
                int idd = Int32.Parse(Request.QueryString["idd"].ToString());
                TeacherComm context = new TeacherComm();
                var xibu = context.xibu.Where(x => x.ID == idd).FirstOrDefault();
                t_id.Text = xibu.ID.ToString();
                t_xibuna.Text = xibu.xibuNa;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int idd = Int32.Parse(Request.QueryString["idd"].ToString());
                TeacherComm context = new TeacherComm();
                var xibu = context.xibu.Where(x => x.ID == idd).FirstOrDefault();
                xibu.xibuNa = t_xibuna.Text.Trim();
                context.SaveChanges();
                Response.Write("<script>alert('保存成功！');window.location.href='xibu_info.aspx';</script>");
            }
            catch
            {
                Response.Write("<script>alert('保存失败！')</script>");
            }
        }
    }
}