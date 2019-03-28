<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task_info.aspx.cs" Inherits="TeacherCC.web.users_layout.task_info" %>

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
        <div class="cl pd-5 bg-1 bk-gray mt-20"> 
            <span class="l">
                <a class="btn btn-primary radius" href="/web/users_layout/task_edit.aspx" >
                     课题管理</a></span> <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
        </div>
        <div style="width:500px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-border table-bordered table-bg table-hover table-sort table-responsive" DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="序号" >
                    <ItemStyle Width="50px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="课题名称">
                        <ItemTemplate>
                            <a href="#" data-title="课题详细" data-href="/web/users_layout/task_show.aspx?id=<%#Eval("id") %>" onclick="Hui_admin_tab(this)"><%#Eval("title") %></a>
                        </ItemTemplate>
                        <ItemStyle Width="100px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="删除">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="删除" OnClientClick="javascript:return confirm('真的要删除吗？');"></asp:LinkButton>
                    </ItemTemplate>
                        <ItemStyle Width="50px" />
                        </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div id="dialog" title="Dialog Title">
	<p></p>
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
