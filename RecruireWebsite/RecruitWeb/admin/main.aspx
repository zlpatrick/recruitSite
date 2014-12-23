﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="RecruitWeb.admin.main" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<html>
<head>
    <title>
    管理 | 赛启咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="../common.aspx" -->

    <style>
    .nav-tabs
    {
        border:none;
    }
    .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus
    {
        border:none;
        background-color:grey;
        color:White;
    }
    
    .nav-tabs .active
    {
        background-color:grey;
        color:White;
    }
    table tr
    {
        height:35px;
        line-height:35px;
    }
    input, select
    {
       height:25px;
    }
    
    #resumeList
    {   
        width:80%;
        margin:auto;
        border-color:lightgrey;
    }
    
    #resumeList tr
    {
        height:30px;
        font-size:12px;
    }
    
    #resumeList tr td
    {
        padding-left:10px;
        padding-right:10px;
    }
    
    .resumeRow
    {
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
			    <li class="active">后台管理</li>
		    </ul>

<ul class="nav nav-tabs" role="tablist" style="border-bottom:1px solid #ccc;margin-bottom:30px;">
  <li role="presentation" class="active"><a href="#insights" role="tab" data-toggle="tab">行业视角</a></li>
  <li role="presentation"><a href="#position" role="tab" data-toggle="tab">添加职位</a></li>
  <li role="presentation"><a href="#resume" role="tab" data-toggle="tab">简历查看</a></li>
</ul>

<div class="tab-content">
<div id="insights" role="tabpanel" class="tab-pane active" >
    <div style="width:500px;margin:auto;font-size:12px">
    
    <table style="font-size:12px">
    <tr><td colspan="2" style="text-align:center">添加行业视角文章</td></tr>
    <tr><td colspan="2"><hr /></td></tr>
    <tr><td style="padding-right:20px;text-align:right">图片</td><td>
        <asp:FileUpload  id="imgUpload" runat="server"/></td>
    </tr>

    <tr><td style="padding-right:20px;text-align:right">文字</td><td>
        <asp:TextBox TextMode="MultiLine" Rows="5" Columns="60"   id="contentText" runat="server"/></td>
    </tr>

    <tr><td style="padding-right:20px;text-align:right">栏目</td><td>
        <asp:DropDownList ID="area" runat="server">
        <asp:ListItem Value="finance">金融服务</asp:ListItem>
        <asp:ListItem Value="manufacturer">制造工业</asp:ListItem>
        <asp:ListItem Value="energy">能源及化工</asp:ListItem>
        <asp:ListItem Value="auto">汽车及配件</asp:ListItem>
        <asp:ListItem Value="life">生命科学</asp:ListItem>
        <asp:ListItem Value="hotel">酒店地产</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr><td style="padding-right:20px;text-align:right">文档</td><td>
        <asp:FileUpload  id="docUpload" runat="server"/></td>
    </tr>
    <tr><td style="padding-right:20px;text-align:right">语言</td><td>
        <asp:DropDownList ID="language" runat="server">
        <asp:ListItem Value="zh">中文</asp:ListItem>
        <asp:ListItem Value="en">英文</asp:ListItem>
        <asp:ListItem Value="jp">日文</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td colspan="2" style="text-align:center">
    <asp:Button Text="提交" ID="submitButton" runat="server" 
            style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" 
            onclick="submitButton_Click"/>
    </td>
    </tr>
</table>
</div>
</div>

<div id="position" role="tabpanel" class="tab-pane" >
    <div style="width:600px;margin:auto">
    <div style="text-align:center">添加职位信息</div>
    <hr />
        <div style="height:30px"><span>标题&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:TextBox ID="title" runat="server" style="width:560px"></asp:TextBox></div>
        <div style="height:30px"><span>内容&nbsp;&nbsp;&nbsp;&nbsp;</span><br /></div> 
        <CKEditor:CKEditorControl ID="positionContent" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
        
        <div style="text-align:center;padding-top:10px">
           <asp:Button Text="提交" runat="server" ID="submitPosition" 
                style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" 
                onclick="submitPosition_Click"/>
        </div>
    </div>
</div>

<div id="resume" role="tabpanel" class="tab-pane" >
    <asp:DataGrid runat="server" ID="resumeList" AllowPaging="true" AutoGenerateColumns="false" PageSize="10">
    <HeaderStyle CssClass="resumeList" />
    <ItemStyle CssClass="resumeRow" />
    <Columns>
    <asp:BoundColumn DataField="username" HeaderText="姓名"></asp:BoundColumn>
    <asp:BoundColumn DataField="useremail" HeaderText="电子邮箱"></asp:BoundColumn>
    <asp:BoundColumn DataField="submitDateTime" HeaderText="提交时间"></asp:BoundColumn>
    <asp:HyperLinkColumn HeaderText="相关职位" Text="查看" NavigateUrl="/job-detail.aspx?id="></asp:HyperLinkColumn>
    <asp:HyperLinkColumn  HeaderText="操作" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/admin/resume-download.aspx?id={0}" Text="下载"></asp:HyperLinkColumn>
    </Columns>
    </asp:DataGrid>
</div>
</div>
<!-- #include file="../bottom.aspx" -->
</form>
</body>
</html>