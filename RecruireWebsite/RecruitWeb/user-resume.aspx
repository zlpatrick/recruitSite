<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-resume.aspx.cs" Inherits="RecruitWeb.user_resume" %>

<html>
<head>
    <title>
    修改密码 | 赛启咨询
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
        width:300px;
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
			    <li class="active">修改密码</li>
		    </ul>
<div class="row">
    <div class="col-md-3">
        <div class="list-group">
          <a href="user-profile.aspx" class="list-group-item">
            个人基本信息
          </a>
          <a href="user-password.aspx" class="list-group-item">
            修改密码
          </a>
          <a href="user-application.aspx" class="list-group-item">已申请职位</a>
          <a href="user-resume.aspx" class="list-group-item active">简历管理</a>
        
        </div>
    </div>
<div class="col-md-9">
    <%
        if (this.resumeID == null)
        {
         %>
                <table style="font-size:12px;">
                        
                        <tr><td>选择文件：</td><td><asp:FileUpload ID="yourCV" runat="server" /></td></tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                        <tr><td colspan="2" style="text-align:center"><asp:Button Text="提交" runat="server" ID="submitYourCV" 
                
                                
                                style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" onclick="submitYourCV_Click"
                /></td></tr>
                    
                    </table>
           <%
        }
        else
        { %>
       <table style="font-size:12px;">
                        <tr><td colspan="2">感谢您已经上传简历 <asp:Button Text="查看" runat="server" ID="Button1" 
                                
                                style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" 
                                onclick="Button1_Click" />
                                <asp:Button Text="删除" runat="server" ID="Button2" 
                                
                                style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" 
                                onclick="Button2_Click" /></td></tr>
                        
                       
                    
                    </table>
       <%
        } %>
</div>

</div></div>
<div style="height:150px">&nbsp;</div>
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>