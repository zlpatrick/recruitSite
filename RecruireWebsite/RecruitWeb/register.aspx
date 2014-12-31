<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RecruitWeb.register" %>

<html>
<head>
    <title>
    创建账号 | 赛启咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->
    <style>
    .solution-section-header
    {
       
        height:40px;
        line-height:40px;
        border-bottom:solid 1px lightgrey;
        color:#555;
        padding-left:10px;
        margin-top:10px;
    }
    
     .solution-section-body
    {
        line-height:25px;
        padding:25px;
        color:#666;
    }
    .solution-section-body ul
    {
        padding:0;
        overflow:hidden;
    }
    .solution-section-body ul li
    {
        float:left;
        margin-right:20px;
    }
    hr
    {
        margin-top:10px;
        margin-bottom:10px
    }
    
    table tr
    {
        height:40px;
        
    }
    
    table tr td:first-child
    {
        text-align:right;
    }
    
    table tr td input, table tr td select
    {
        width:300px;
        height:25px;
    }
    </style>
</head>

<body>
<form runat="server">
<!-- #include file="nav.aspx"-->
<div class="container">
     <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">创建账号</li>
		    </ul>
            <hr />
      <div style="padding-left:20px;color:grey;padding-top:10px;padding-bottom:5px;">
      <p><span class="glyphicon glyphicon-star"></span> 注册成为会员以后，如果有合适的职位，我们的专业职业顾问将通过您注册的手机/邮箱为您介绍最适合您的职位信息
      </p>
      <p><span class="glyphicon glyphicon-star"></span> 即使您现在身在海外，我们也十分欢迎您的注册</p>
      <p><span class="glyphicon glyphicon-star"></span> 所有服务均为免费</p>
      </div>
      <hr />
      <table style="width:600px;margin:30px auto;font-size:12px;color:Grey;">
      <tr><td>会员ID：</td><td><asp:TextBox ID="memberID" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>密码：</td><td><asp:TextBox ID="ps" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>确认密码：</td><td><asp:TextBox ID="repass" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>姓名：</td><td><asp:TextBox ID="name" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>手机：</td><td><asp:TextBox ID="mobile" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>日语能力：</td><td><asp:DropDownList ID="jpLevel" runat="server"></asp:DropDownList></td><td></td></tr>
      <tr><td>现居地：</td><td><asp:DropDownList ID="location" runat="server"></asp:DropDownList></td><td></td></tr>
      <tr><td>期望工作地点：</td><td><asp:DropDownList ID="expectLocation" runat="server"></asp:DropDownList></td><td></td></tr>
      <tr><td>求职状态：</td><td><asp:DropDownList ID="status" runat="server"></asp:DropDownList></td><td></td></tr>
      <tr><td>感兴趣的行业：</td><td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td><td></td></tr>
      <tr><td colspan="3" style="text-align:left"><asp:Button ID="regButton" runat="server" Text="创建账号" style="width:100px"/></td></tr>
      </table>
</div>


        
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>
