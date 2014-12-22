<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RecruitWeb.admin.login" %>

<html>
<head>
    <title>
    管理登录 | 赛启咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="../common.aspx" -->

    <style>
    .home-section-header
    {
        color:#333;
    }
    .home-section-body p
    {
        margin:0px 0px 15px;
        color:grey;
    }
    hr
    {
        margin-top:10px;
        margin-bottom:20px;
    }
    
     .bannerText
     {
         position:absolute;
         top:100px;
         left:50px;
     }
     
    
    
    
    .jumbotron img
    {
        width:100%;
        opacity:0.6;
    }
    table
    {
        font-size:12px;
    }
    table tr
    {
        height:35px;
    }
    </style>
</head>

<body>
<form id="Form1" runat="server">
<!-- #include file="../nav.aspx"-->

<div class="container">
<ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">后台登录</li>
		    </ul>
<hr />
    <table style="width:400px;margin: 50px auto;">
    <tr><td colspan="2" style="text-align:center">请登录后台</td></tr>
    <tr><td colspan="2" style="text-align:center"><hr /></td></tr>
    <tr>
    <td style="text-align:right;padding-right:10px">登录名</td>
    <td><asp:TextBox ID="loginName" runat="server" style="width:90%"></asp:TextBox></td>
    </tr>

    <tr>
    <td style="text-align:right;padding-right:10px">密码</td>
    <td><asp:TextBox ID="loginPass" runat="server" style="width:90%"></asp:TextBox></td>
    </tr>
    <tr><td colspan="2" style="text-align:center"><hr /></td></tr>
    <tr><td colspan="2" style="text-align:center"><asp:Button ID="submitButton" 
            runat="server" Text="登录" 
            style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" 
            onclick="submitButton_Click"/></td></tr>
    </table>
    </div>

</form>
</body>
</html>

