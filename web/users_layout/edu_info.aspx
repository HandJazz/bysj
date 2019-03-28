<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edu_info.aspx.cs" Inherits="TeacherCC.web.users_layout.edu_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:20px">
            <asp:TextBox ID="TextBox2" runat="server" width="600px" Height="180px" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
        <div style="height:250px">
            <h3>编辑学习经历</h3>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="500px" Height="100px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" />
        </div>
        </div>
    </form>
</body>
</html>
