<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-profile.aspx.cs" Inherits="RecruitWeb.user_profile" %>

<html>
<head>
    <title>
    个人档案 | 里德咨询
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
    
    table tr td input[type="text"],table tr td input[type="password"], table tr td select
    {
        width:100%;
        height:25px;
    }
    
    label
    {
        font-weight:normal;
        margin-left:5px;
        margin-right:20px;
    }
    </style>
</head>

<body>

<!-- #include file="nav.aspx"-->
<form id="Form1" runat="server">
<div class="container">
     <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">个人档案</li>
		    </ul>
<div class="row" style="margin-bottom:20px">
    <div class="col-md-3">
        <div class="list-group">
          <a href="user-profile.aspx" class="list-group-item active">
            个人基本信息
          </a>
          <a href="user-password.aspx" class="list-group-item">
            修改密码
          </a>
          <a href="user-application.aspx" class="list-group-item">已申请职位</a>
          <a href="user-resume.aspx" class="list-group-item">简历管理</a>
        
        </div>
    </div>
<div class="col-md-9">


           
      <table style="width:600px;margin: auto auto 30px auto;font-size:12px;color:Grey;">
      <tr><td>会员ID：</td><td><asp:TextBox ID="memberID" runat="server" Enabled="false"></asp:TextBox></td><td></td></tr>
            <tr><td>姓名：</td><td><asp:TextBox ID="name" runat="server"></asp:TextBox></td><td></td></tr>
      
        <tr><td>出生年月：</td><td><asp:TextBox ID="dateOfBirth" runat="server"></asp:TextBox></td><td>&nbsp;YYYY-MM-DD</td></tr>
      <tr><td>手机：</td><td><asp:TextBox ID="mobile" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>当前公司：</td><td><asp:TextBox ID="currentCompany" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>现任职务：</td><td><asp:TextBox ID="currentPosition" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>现居地：</td><td><asp:DropDownList ID="location" runat="server">
      <asp:ListItem Value="上海">上海</asp:ListItem>
      </asp:DropDownList></td><td></td></tr>
     
      <tr><td>感兴趣的行业：</td><td>
      <asp:CheckBox id="financeCheckBox" runat="server" Text="金融"></asp:CheckBox>
      <asp:CheckBox id="autoCheckBox" runat="server" Text="汽车及配件"></asp:CheckBox>
      <asp:CheckBox id="lifeCheckBox" runat="server" Text="生命科学"></asp:CheckBox><br />
      <asp:CheckBox id="powerCheckBox" runat="server" Text="能源及化工"></asp:CheckBox>
      <asp:CheckBox id="manufCheckBox" runat="server" Text="制造业"></asp:CheckBox>
      <asp:CheckBox id="hotelCheckBox" runat="server" Text="酒店地产"></asp:CheckBox>
      </td><td></td></tr>
      <tr><td colspan="3"><hr /></td></tr>
      <tr><td></td><td style="text-align:center"><asp:Button ID="editButton" 
              runat="server" Text="更新账号信息"
              
              style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" onclick="editButton_Click" 
             /></td><td></td></tr>
      </table>
</div>

</div></div>
        
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>

