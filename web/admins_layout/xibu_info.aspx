<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xibu_info.aspx.cs" Inherits="TeacherCC.web.admins_layout.xibu_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:20px">
            <h3>系部总览</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="ID" CssClass="table table-border table-bordered table-bg table-hover table-sort table-responsive" >
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="系部序号" />
                    <asp:BoundField DataField="xibuNa" HeaderText="系部名称" />
                    <asp:TemplateField ShowHeader="False" HeaderText="删除">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="删除" OnClientClick="javascript:return confirm('真的要删除吗？');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="编辑">
                 <ItemTemplate>
                     <a href="/web/admins_layout/xibu_edit.aspx?idd=<%#Eval("ID") %>" >编辑</a>
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div>
            <h3>添加系部</h3>
                <asp:Label ID="Label1" runat="server" Text="系部名称："></asp:Label>
                    <asp:TextBox ID="t_xibuna" runat="server" Width="150"></asp:TextBox>
                        <asp:Button ID="btn_1" runat="server" Text="添加" OnClick="btn_1_Click"  />
                </div>
        </div>
    </form>
            <!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="/static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="/lib/laypage/1.2/laypage.js"></script>
</body>
</html>
