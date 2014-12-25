<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main-insights-add.aspx.cs" Inherits="RecruitWeb.admin.main_insights_add" %>

<html>
<head>
    <title>
    管理 | 赛启咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="../common.aspx" -->

    <style>
    
    table tr
    {
        height:35px;
    }
    
    input,select
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
    
    #errorText
    {
        display:none;
    }
    
    </style>
    <script>
        function showError() {
            $("#errorText").css("display", "block");
        }
    </script>
</head>

<body>
<form id="Form1" runat="server">
<!-- #include file="../nav.aspx"-->
<div class="container">
 <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="/index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">后台管理</li>
		    </ul>


<div class="row">
<div class="col-md-3">
<div class="list-group">
  <a href="/admin/main-insights-add.aspx" class="list-group-item active">
    添加行业视角
  </a>
  <a href="/admin/main-insights-list.aspx" class="list-group-item">行业视角列表</a>
  <a href="/admin/main-position-add.aspx" class="list-group-item">添加新职位</a>
  <a href="/admin/main-position-list.aspx" class="list-group-item">职位信息列表</a>
  <a href="/admin/main-resume-list.aspx" class="list-group-item">简历信息列表</a>
</div>
</div>
<div class="col-md-9">
<table style="font-size:12px;margin:auto">
<tr style="color:Red;text-align:center"><td colspan="2"><span id="errorText">所有项目都是必填项，请检查您的输入</span></td></tr>
    <tr><td colspan="2" style="text-align:center">添加行业视角文章</td></tr>
    <tr><td colspan="2"><hr /></td></tr>
    
    <tr><td style="padding-right:20px;text-align:right">标题</td><td>
          <asp:TextBox ID="titleText" runat="server" style="width:100%"></asp:TextBox></td>
    </tr>
    <tr><td style="padding-right:20px;text-align:right">图片</td><td>
        <asp:FileUpload  id="imgUpload" runat="server"/></td>
    </tr>

    <tr><td style="padding-right:20px;text-align:right">内容</td><td>
        <asp:TextBox TextMode="MultiLine" Rows="10" Columns="60"   id="contentText" runat="server"/></td>
    </tr>

    <tr><td style="padding-right:20px;text-align:right">栏目</td><td>
        <asp:DropDownList ID="area" runat="server">
        <asp:ListItem Value="金融服务">金融服务</asp:ListItem>
        <asp:ListItem Value="制造工业">制造工业</asp:ListItem>
        <asp:ListItem Value="能源及化工">能源及化工</asp:ListItem>
        <asp:ListItem Value="汽车及配件">汽车及配件</asp:ListItem>
        <asp:ListItem Value="生命科学">生命科学</asp:ListItem>
        <asp:ListItem Value="酒店地产">酒店地产</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr><td style="padding-right:20px;text-align:right">文档</td><td>
        <asp:FileUpload  id="docUpload" runat="server"/></td>
    </tr>
    <tr><td style="padding-right:20px;text-align:right">语言</td><td>
        <asp:DropDownList ID="language" runat="server">
        <asp:ListItem Value="中文">中文</asp:ListItem>
        <asp:ListItem Value="英文">英文</asp:ListItem>
        <asp:ListItem Value="日文">日文</asp:ListItem>
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

</div>
<!-- #include file="../bottom.aspx" -->
</form>
</body>
</html>