<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher_info.aspx.cs" Inherits="TeacherCC.web.admins_layout.teacher_info" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="t_input" runat="server"></asp:TextBox><asp:DropDownList ID="DropDownList1" runat="server" >
                <asp:ListItem>工号查找</asp:ListItem>
                <asp:ListItem>姓名查找</asp:ListItem>
            </asp:DropDownList><asp:Button ID="Button1" runat="server" Text="查找教师" OnClick="Button1_Click" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-border table-bordered table-bg table-hover table-sort table-responsive">
                <Columns>
                    <asp:BoundField DataField="gonghao" HeaderText="教师工号" />
                    <asp:TemplateField HeaderText="姓名">
                        <ItemTemplate>
                            <%--<a href="teacher_show.aspx?idd=<%#Eval("gonghao")%>"><%#Eval("name") %></a>--%>
                            <a href="#" data-title="教师详细信息" data-href="/web/admins_layout/teacher_show.aspx?idd=<%#Eval("gonghao")%>" onclick="Hui_admin_tab(this)"><%#Eval("name") %></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="sex" HeaderText="性别" />
                    <asp:BoundField DataField="jiguan" HeaderText="籍贯" />
                    <asp:BoundField DataField="xibuId" HeaderText="系部序号" />
                    <asp:BoundField DataField="teachertype" HeaderText="职工类型" />
                    <asp:BoundField DataField="cellphone" HeaderText="联系号码" />
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
