<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_add.aspx.cs" Inherits="TeacherCC.web.admins_layout.user_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .val{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:20px">
            <h3>添加系统用户</h3>
            <table>
                <tr>
                    <th>教师工号：</th><th>
                        <asp:TextBox ID="t_gonghao" runat="server"></asp:TextBox></th>
                    <th>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请填写工号" ControlToValidate="t_gonghao" CssClass="val"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t_gonghao" CssClass="val" ErrorMessage="只能填写数字" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    </th>
                </tr>
                 <tr>
                    <th>姓名：</th><th>
                        <asp:TextBox ID="t_name" runat="server"></asp:TextBox></th><th>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="请填写姓名" ControlToValidate="t_name" CssClass="val"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="只能填写汉字" ControlToValidate="t_name" CssClass="val" ValidationExpression="^[\u4e00-\u9fa5]{0,}$"></asp:RegularExpressionValidator></th>
                </tr>
                <tr>
                    <th>密码：</th><th>
                        <asp:TextBox ID="t_pwd" runat="server"></asp:TextBox></th>
                    <th>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="必须填写密码" ControlToValidate="t_pwd" CssClass="val"></asp:RequiredFieldValidator></th>
                    </tr>
                <tr>
                    <th>确认密码：</th><th>
                        <asp:TextBox ID="t_pwd2" runat="server"></asp:TextBox>
                        
                    </th>
                    <th><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码填写不一样" ControlToCompare="t_pwd" CssClass="val" ControlToValidate="t_pwd2"></asp:CompareValidator></th>
                </tr>
                <tr>
                    <th>性别：</th><th>
                        <asp:DropDownList ID="t_sex" runat="server">
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:DropDownList></th>
                </tr>
                <tr>
                    <th>所在系部：</th><th>
                        <asp:DropDownList ID="t_xibu" runat="server"></asp:DropDownList></th>
                </tr>
                <tr>
                    <th>用户组：</th><th>
                        <asp:DropDownList ID="t_usertype" runat="server">
                            <asp:ListItem>教师</asp:ListItem>
                            <asp:ListItem>管理员</asp:ListItem>
                        </asp:DropDownList></th>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Text="确认添加" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
