<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit_pwd.aspx.cs" Inherits="TeacherCC.web.users_layout.edit_pwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server"><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div style="margin-left:20px">
        <div>
            <h3>用户基本信息</h3>
            <label>教师工号：</label><asp:Label ID="t_gonghao" Text="" runat="server"></asp:Label><br />
            <label>姓名：</label><asp:Label ID="t_name" Text="" runat="server"></asp:Label><br />
            <label>性别：</label><asp:Label ID="t_sex" Text="" runat="server"></asp:Label><br />
            <label>用户组：</label><asp:Label ID="t_usertype" Text="" runat="server"></asp:Label>
        </div>
        <div>
            <h3>修改密码</h3>
            <table>
                <tr>
                    <td><label>当前密码：</label></td><td><asp:TextBox ID="t_pwd" runat="server" AutoPostBack="true" OnTextChanged="t_pwd_TextChanged" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="valr_pwd" runat="server" ControlToValidate="t_pwd" ErrorMessage="请填写密码" ValidationGroup="验证" Display="Dynamic" Visible="true"></asp:RequiredFieldValidator>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                        <asp:Label ID="test1" runat="server"></asp:Label>
                        </ContentTemplate>
                         <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="t_pwd" EventName="TextChanged" />
                         </Triggers>
                     </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td><label>新的密码：</label></td><td><asp:TextBox ID="t_pwd2" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t_pwd2" ErrorMessage="请填写新的密码" ValidationGroup="验证" Display="Dynamic" Visible="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><label>确认密码：</label></td><td><asp:TextBox ID="t_pwd3" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="valrPwd2" runat="server" ControlToValidate="t_pwd3" ErrorMessage="请确认你的密码：" ValidationGroup="验证"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="t_pwd2" ControlToValidate="t_pwd3" Display="Dynamic" ErrorMessage="两次输入的密码不一样" ValidationGroup="验证"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btn_1" Text="修改" runat="server" OnClick="btn_1_Click" />
        </div>
            </div>
    </form>
</body>
</html>
