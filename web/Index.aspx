<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TeacherCC.web.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="../style/Style.css" type="text/css" rel="stylesheet" />
<link href="../style/jquery-ui.css" rel="stylesheet"/>
    <!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link href="/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="/static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>教师管理系统</title>
    <style>
        *{
            margin:0;
        padding:0;
        }
        #btn_login{
            margin-right:60px;
        }
    </style>
</head>
<body>
    <div >
         <div id="loginform" class="loginBox">
    <form id="form1" runat="server" class="form form-horizontal">
        <div >
            <h3 style="font-family:'Times New Roman', Times, serif;text-align:center;color:antiquewhite;font-size:50px;">教师管理系统</h3>
      <div class="row cl" style="margin-top:10px">
        <label class="form-label col-xs-3" style="color:white;font-size:20px;">用户名：</label>
        <div class="formControls col-xs-8" style="margin-left:0px;">
            <asp:TextBox ID="login_id" runat="server" CssClass="input-text size-L"></asp:TextBox>
        </div>
      </div>
      <div class="row cl">
        <label class="form-label col-xs-3" style="color:white;font-size:20px;">密码：</label>
        <div class="formControls col-xs-8">
            <asp:TextBox ID="login_pwd" runat="server"  CssClass="input-text size-L" TextMode="Password"></asp:TextBox>
        </div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
            <asp:TextBox ID="verify" runat="server" CssClass="input-text size-L" placeholder="验证码" onblur="if(this.value==''){this.value='验证码:'}" onclick="if(this.value=='验证码:'){this.value='';}" value="验证码:" style="width:150px;"></asp:TextBox>
          <%--<input class="input-text size-L" type="text" placeholder="验证码" onblur="if(this.value==''){this.value='验证码:'}" onclick="if(this.value=='验证码:'){this.value='';}" value="验证码:" style="width:150px;">--%>
          <img src="ValidateCode.aspx" style="vertical-align:middle;height:41px" onclick="this.src='ValidateCode.aspx?' +new Date().getTime();"/></div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          	
<div class="FileArea"></div>
        </div>
      </div>
      <div class="row cl" style="margin-top:0px">
        <div class="formControls col-xs-8 col-xs-offset-3" style="margin-top:0px">  
            <asp:Button ID="btn_login" runat="server" Text="登录"  CssClass="btn btn-success radius size-L" OnClick="btn_login_Click" />
            <asp:Button ID="btn_empty" runat="server" Text="重置"  CssClass="btn btn-default radius size-L" OnClick="btn_empty_Click" />
        </div>
      </div>
  </div>
        </form>
</div>
        <%--<div>
            <div class="login">
            <!-- Tabs -->
			<div id="tabs">
				<ul>
					<li><a href="#tabs-1">教师登录</a></li>
					<li><a href="#tabs-2">管理员登录</a></li>
				</ul>
				
					
                    <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
        <div class="formControls col-xs-8">
          <asp:TextBox ID="login_id" runat="server" CssClass="input-text size-L"></asp:TextBox>
        </div>
      </div>
					
					
                    <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
        <div class="formControls col-xs-8">
          <asp:TextBox ID="login_pwd" runat="server" CssClass="input-text size-L"></asp:TextBox>
        </div>
      </div>
					<br/>
                    <span>验证码：</span><div class="tbox_border"><asp:TextBox ID="verify" runat="server" CssClass="text_box"></asp:TextBox></div>
                    <img src="ValidateCode.aspx" style="vertical-align:middle" onclick="this.src='ValidateCode.aspx?' +new Date().getTime();" />
                    <asp:Button ID="btn_login" runat="server" Text="登录" OnClick="btn_login_Click" />
                    <asp:Button ID="btn_empty" runat="server" Text="重置" OnClick="btn_empty_Click" />
				
				
			</div>
        </div>
        </div>--%>
    

        </div>
</body>
<script src="../script/jquery.js" type="text/javascript"></script>
<script src="../script/jquery-ui.js" type="text/javascript"></script>
    <script type="text/javascript" src="/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/static/h-ui/js/H-ui.min.js"></script>
</html>
