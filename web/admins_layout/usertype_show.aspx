<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usertype_show.aspx.cs" Inherits="TeacherCC.web.admins_layout.usertype_show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>用户组修改</h3>
            <table>
                <tr>
                    <th>教师工号：</th><th>
                        <asp:Label ID="t_gonghao" runat="server" Text="Label"></asp:Label></th>
                </tr>
                <tr>
                    <th>姓名：</th><th>
                        <asp:Label ID="t_name" runat="server" Text="Label"></asp:Label></th>
                </tr>
                <tr>
                    <th>性别：</th><th>
                        <asp:Label ID="t_sex" runat="server" Text="Label"></asp:Label></th>
                </tr>
                <tr>
                    <th>用户所在组：</th><th>
                        <asp:DropDownList ID="t_usertype" runat="server">
                            <asp:ListItem>教师</asp:ListItem>
                            <asp:ListItem>管理员</asp:ListItem>
                        </asp:DropDownList></th>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
