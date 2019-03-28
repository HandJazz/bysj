<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="honor_edit.aspx.cs" Inherits="TeacherCC.web.users_layout.honor_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>  
            <h3>添加奖项</h3>
	        <label>获奖年月：</label><asp:TextBox ID="h_date"  runat="server" type="date"></asp:TextBox><br />
            <label>获奖名称：</label><asp:TextBox ID="h_name" runat="server" Width="200px"></asp:TextBox><br/>
            <asp:Button ID="h_add" runat="server" Text="添加" OnClick="h_add_Click" />
            <br />
        </div>
    </form>
</body>
</html>
