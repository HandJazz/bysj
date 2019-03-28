<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="basic_info.aspx.cs" Inherits="TeacherCC.web.users_layout.basic_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/style.css" />
    <title>个人基本信息</title>
    <style>
        *{
            margin:0;
            padding:0;
        }
        .vali{
            color:red;
        }
        .auto-style1 {
            width: 112px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div style="margin-left:20px;width:1000px;height:400px;">
            <div class="t_table" style="height:360px">
            <table  class="table table-border table-bordered table-bg table-hover table-sort table-responsive" style="width:500px;float:left;">
                <tr><th class="auto-style1">教职工号：</th><th><asp:Label ID="t_number" runat="server" Text=""></asp:Label></th></tr>
                <tr><th class="auto-style1">姓名：</th><th><asp:Label ID="t_name" runat="server" Text=""></asp:Label></th></tr>
                <tr><th class="auto-style1">曾用名：</th><th><asp:TextBox ID="t_name2" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="请输入中文" ControlToValidate="t_name2" ValidationExpression="^[\u4e00-\u9fa5]{0,}$" CssClass="vali"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入曾用名" ControlToValidate="t_name2" CssClass="vali"></asp:RequiredFieldValidator>
                                 </th></tr>
                <tr><th class="auto-style1">性别：</th><th>
                    <asp:DropDownList ID="t_sex" runat="server">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></th></tr>
                <tr><th class="auto-style1">居民身份证件号：</th><th><asp:TextBox ID="t_category" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="t_category" ErrorMessage="请输入有效的身份证号码" ValidationExpression="(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)" CssClass="vali"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t_category" CssClass="vali" ErrorMessage="请输入身份证号码"></asp:RequiredFieldValidator>
                    </th></tr>
                <tr><th class="auto-style1">籍贯：</th><th><asp:TextBox ID="t_jiguan" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="t_jiguan" ErrorMessage="请输入中文" ValidationExpression="^[\u4e00-\u9fa5]{0,}$" CssClass="vali"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t_jiguan" CssClass="vali" ErrorMessage="请输入籍贯"></asp:RequiredFieldValidator>
                    </th></tr>
                <tr><th class="auto-style1">民族：</th><th><asp:TextBox ID="t_minzu" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="t_minzu" ErrorMessage="请输入中文" ValidationExpression="^[\u4e00-\u9fa5]{0,}$" CssClass="vali"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t_minzu" CssClass="vali" ErrorMessage="请输入民族"></asp:RequiredFieldValidator>
                    </th></tr>
                <tr><th class="auto-style1">婚姻状况：</th><th>
                    <asp:DropDownList ID="t_hunyiin" runat="server">
                        <asp:ListItem>已婚</asp:ListItem>
                        <asp:ListItem>未婚</asp:ListItem>
                    </asp:DropDownList></th></tr>
                <tr><th class="auto-style1">参加工作月份：</th><th>
                    <asp:TextBox ID="t_worktime" onclick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" CssClass="input-text Wdate" runat="server" style="width:120px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="t_worktime" CssClass="vali" ErrorMessage="请输入日期"></asp:RequiredFieldValidator>
                </th></tr>
            </table>
            <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive" style="width:500px;">
                <tr><th>出生日期：</th><th><asp:TextBox ID="t_birthday" onclick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" CssClass="input-text Wdate" runat="server" style="width:120px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="t_birthday" CssClass="vali" ErrorMessage="请输入日期"></asp:RequiredFieldValidator>
                    </th></tr>
                <tr><th>出生地：</th><th><asp:TextBox ID="t_birthplace" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="t_birthplace" CssClass="vali" ErrorMessage="请输入出生地"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="t_birthplace" ErrorMessage="请输入中文" ValidationExpression="^[\u4e00-\u9fa5]{0,}$" CssClass="vali"></asp:RegularExpressionValidator>
                    </th></tr>
                <tr><th>政治面貌：</th><th>
                    <asp:DropDownList ID="t_zhengzhi" runat="server">
                        <asp:ListItem>群众</asp:ListItem>
                        <asp:ListItem>共产党员</asp:ListItem>
                    </asp:DropDownList></th></tr>
                <tr><th>健康状况：</th><th><asp:TextBox ID="t_health" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="t_health" CssClass="vali" ErrorMessage="请填写状况内容"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="t_health" ErrorMessage="请输入中文" ValidationExpression="^[\u4e00-\u9fa5]{0,}$" CssClass="vali"></asp:RegularExpressionValidator>
                    </th></tr>
        
                <tr><th>教职工类型：</th><th>
                    <asp:DropDownList ID="t_cate" runat="server">
                        <asp:ListItem>教学人员</asp:ListItem>
                        <asp:ListItem>管理人员</asp:ListItem>
                        <asp:ListItem>后勤人员</asp:ListItem>
                    </asp:DropDownList>
                    </th></tr>
                <tr>
                    <th>联系电话：</th><th>
                        <asp:TextBox ID="t_phone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="t_phone" CssClass="vali" ErrorMessage="请填入联系方式"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="t_phone" CssClass="vali" ErrorMessage="请输入正确的号码" ValidationExpression="((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)"></asp:RegularExpressionValidator>
                    </th>
                </tr>
                <tr><th>电子邮箱：</th><th>
                    <asp:TextBox ID="t_mail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="t_mail" CssClass="vali" ErrorMessage="请按照正确格式书写" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="t_mail" CssClass="vali" ErrorMessage="请输入电子邮箱"></asp:RequiredFieldValidator>
                    </th>
                </tr>
            </table>
                </div>
                <asp:Button ID="Button1" runat="server" Text="保存并提交" OnClick="Button1_Click" />
        </div>
    </form>
    <!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="/lib/laypage/1.2/laypage.js"></script>
</body>
</html>
