<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task_info.aspx.cs" Inherits="TeacherCC.web.admins_layout.task_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/style.css" />
    <link href="/style/jquery-ui.css" rel="stylesheet"/>
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
    <title></title>
    <style>
        #k_title{
            font-size:25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:500px">
            <h3>输入科研题目</h3>
            <asp:TextBox ID="k_title" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="查找课题" OnClick="Button1_Click" Font-Size="20px" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass="table table-border table-bordered table-bg table-hover table-sort table-responsive">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="课题序号" />
                    <asp:TemplateField HeaderText="科研题目">
                        <ItemTemplate>
                            <a href="#" data-title="课题详细" data-href="/web/admins_layout/task_show.aspx?id=<%#Eval("id") %>" onclick="Hui_admin_tab(this)"><%#Eval("title") %></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
            <!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="/static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="/lib/laypage/1.2/laypage.js"></script>
</body>
</html>
