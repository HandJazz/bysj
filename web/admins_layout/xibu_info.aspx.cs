using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeacherCC.Entity;

namespace TeacherCC.web.admins_layout
{
    public partial class xibu_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TeacherComm context = new TeacherComm();
            var xibu = context.xibu.ToList();
            GridView1.DataSource = xibu;
            GridView1.DataBind();
        }

        protected void btn_1_Click(object sender, EventArgs e)
        {
            TeacherComm context = new TeacherComm();
            var xibu = new xibu();
            xibu.xibuNa = t_xibuna.Text;
            context.xibu.Add(xibu);
            context.SaveChanges();
            Response.Write("<script>alert('添加成功');window.location.href='xibu_info.aspx';</script>");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
                int xibuid =Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
                TeacherComm context = new TeacherComm();
            var user = context.teacher.Where(x => x.xibuId == xibuid).FirstOrDefault();
            int t_id = 0;
            if (user != null) {
                t_id = user.gonghao;
            }
            var t_rongyu = context.rongyu.Where(x => x.gonghao == t_id).FirstOrDefault();
            if (t_rongyu != null)
            {
                context.rongyu.Remove(t_rongyu);
            }
            var t_keti = context.keti.Where(x => x.gonghao == t_id).FirstOrDefault();
            if (t_keti != null)
            {
                context.keti.Remove(t_keti);
            }
            if (user != null)
            {
                context.teacher.Remove(user);
            }

            var xibu = context.xibu.Where(x => x.ID == xibuid).FirstOrDefault();
                context.xibu.Remove(xibu);
                context.SaveChanges();
                Response.Write("<script>alert('删除成功！');window.location.href='xibu_info.aspx';</script>");
           
        }
    }
}