<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task_edit.aspx.cs" Inherits="TeacherCC.web.users_layout.task_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>添加课题</h3>
            <label>标题：</label><asp:TextBox ID="t_title" runat="server"></asp:TextBox><br />
            <label>参加人员：</label><asp:TextBox ID="t_people" runat="server"></asp:TextBox><label>(*人员之间用“，”间隔)</label><br />
            <label>申报时间：</label><asp:TextBox ID="t_shen" runat="server" type="date"></asp:TextBox><br />
            <label>立项时间：</label><asp:TextBox ID="t_start" runat="server" type="date"></asp:TextBox>-
            结题<label>时间：</label><asp:TextBox ID="t_end" runat="server" type="date"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
        </div>
        <div>
    </form>
</body>
</html>
