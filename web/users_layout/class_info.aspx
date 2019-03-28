<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="class_info.aspx.cs" Inherits="TeacherCC.web.users_layout.class_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .vali{
            color:red;
        }
        .auto-style1 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div>
            <table>
                <tr><th class="auto-style1">所在系部：</th><th class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    </th></tr>
                <tr><th>授课班级：</th><th>
                    <asp:TextBox ID="t_class" runat="server"></asp:TextBox></th>
                    <th>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="请正确输入" ControlToValidate="t_class" ValidationExpression="^[\u4e00-\u9fa50-9]{0,}$" CssClass="vali"></asp:RegularExpressionValidator></th>
                </tr>
                <tr>
                    <th>教授课程：</th><th>
                        <asp:TextBox ID="t_kemu" runat="server"></asp:TextBox></th>
                    <th>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="请正确输入" ControlToValidate="t_kemu" ValidationExpression="^[\u4e00-\u9fa5]{0,}$" CssClass="vali"></asp:RegularExpressionValidator></th>
                </tr>
                <tr><th>授课学期：</th><th>
                    <asp:DropDownList ID="t_xueqi" runat="server">
                        <asp:ListItem>2017年上</asp:ListItem>
                        <asp:ListItem>2017年下</asp:ListItem>
                        <asp:ListItem>2018年上</asp:ListItem>
                        <asp:ListItem>2018年下</asp:ListItem>
                        <asp:ListItem>2019年上</asp:ListItem>
                        <asp:ListItem>2019年下</asp:ListItem>
                    </asp:DropDownList></th></tr>
            </table>
                <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
