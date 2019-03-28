<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task_show.aspx.cs" Inherits="TeacherCC.web.users_layout.task_show" %>

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
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>课题信息</h3>
            <%--<label>标题：</label><asp:Label ID="t_title" runat="server" Text=""></asp:Label><br />
            <label>参与人员：</label><asp:Label ID="t_people" runat="server" Text=""></asp:Label><br />
            <label>申报时间：</label><asp:Label ID="t_shen" runat="server" Text=""></asp:Label><br />
            <label>开始时间：</label><asp:Label ID="t_start" runat="server" Text=""></asp:Label><br />
            <label>截止时间：</label><asp:Label ID="t_end" runat="server" Text=""></asp:Label>--%>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-border table-bordered table-bg table-hover table-sort table-responsive">
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="标题" >
                    <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="people" HeaderText="参与人员" />
                    <asp:TemplateField HeaderText="申报时间">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Bind("shenbaodate","{0:yyyy-mm-dd}")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="开始时间">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Bind("startdate","{0:yyyy-mm-dd}")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="截止时间">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Bind("enddate","{0:yyyy-mm-dd}")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
