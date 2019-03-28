<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher_show.aspx.cs" Inherits="TeacherCC.web.admins_layout.teacher_show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:20px">
            <table style="float:left; margin-right:20px">
                <tr><th>教师工号：</th><th><asp:Label ID="t_gonghao" runat="server" Text="Label" CssClass="l"></asp:Label></th></tr>
                <tr><th>姓名：</th><th><asp:Label ID="t_name" runat="server" Text="Label" CssClass="ll"></asp:Label></th></tr>
                <tr><th>曾用名：</th><th><asp:Label ID="t_name2" runat="server" Text="Label" CssClass="ll"></asp:Label></th></tr>
                <tr><th>性别：</th><th><asp:Label ID="t_sex" runat="server" Text="Label" CssClass="ll"></asp:Label></th></tr>
                <tr><th>出生日期：</th><th><asp:Label ID="t_birthdate" runat="server" Text="Label" CssClass="ll"></asp:Label></th></tr>
                <tr><th>出生地：</th><th><asp:Label ID="t_birthplace" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>身份证号码：</th><th><asp:Label ID="t_shenfennu" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>籍贯：</th><th><asp:Label ID="t_jiguan" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>民族：</th><th><asp:Label ID="t_minzu" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>身体状况：</th><th><asp:Label ID="t_jiankang" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>婚姻状况：</th><th><asp:Label ID="t_hunyin" runat="server" Text="Label"></asp:Label></th></tr>
            </table>
            <table>
                <tr><th>所在系部：</th><th><asp:Label ID="t_xibu" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>工作时间：</th><th><asp:Label ID="t_worktime" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>政治面貌：</th><th><asp:Label ID="t_zhengzhi" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>联系号码：</th><th><asp:Label ID="t_cellphone" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>职工类型：</th><th><asp:Label ID="t_teachertype" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>任课班级：</th><th><asp:Label ID="t_classname" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>教授课程：</th><th><asp:Label ID="t_project" runat="server" Text="Label"></asp:Label></th></tr>
                <tr><th>任课学期：</th><th><asp:Label ID="t_season" runat="server" Text="Label"></asp:Label></th></tr>
            </table>
    </form>
</body>
</html>
