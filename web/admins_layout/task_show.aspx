<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task_show.aspx.cs" Inherits="TeacherCC.web.admins_layout.task_show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>标题:</label><asp:Label ID="t_title" runat="server" Text="Label"></asp:Label><br />
            <label>科研教师:</label><asp:Label ID="t_teacher" runat="server" Text="Label"></asp:Label><br />
            <label>参与人员:</label><asp:Label ID="t_people" runat="server" Text="Label"></asp:Label><br />
            <label>申报时间：</label><asp:Label ID="t_shen" runat="server" Text="Label"></asp:Label><br />
            <label>立项时间：</label><asp:Label ID="t_start" runat="server" Text="Label"></asp:Label><br />
            <label>结题时间：</label><asp:Label ID="t_end" runat="server" Text="Label"></asp:Label><br />
        </div>
    </form>
</body>
</html>
