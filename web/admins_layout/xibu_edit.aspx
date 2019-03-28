<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xibu_edit.aspx.cs" Inherits="TeacherCC.web.admins_layout.xibu_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th>系部序号：</th><th>
                        <asp:Label ID="t_id" runat="server" Text="Label"></asp:Label></th>
                </tr>
                <tr>
                    <th>系部名称：</th><th>
                        <asp:TextBox ID="t_xibuna" runat="server"></asp:TextBox></th>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
