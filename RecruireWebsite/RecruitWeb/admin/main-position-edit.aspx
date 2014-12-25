<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main-position-edit.aspx.cs" Inherits="RecruitWeb.admin.main_position_edit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


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
<form id="Form2" runat="server">
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
  <a href="/admin/main-insights-add.aspx" class="list-group-item">
    添加行业视角
  </a>
  <a href="/admin/main-insights-list.aspx" class="list-group-item">行业视角列表</a>
  <a href="/admin/main-position-add.aspx" class="list-group-item">添加新职位</a>
  <a href="/admin/main-position-list.aspx" class="list-group-item">职位信息列表</a>
  <a href="/admin/main-resume-list.aspx" class="list-group-item">简历信息列表</a>
</div>
</div>
<div class="col-md-9">
<div style="width:600px;margin:auto">
<div id="errorText" style="text-align:center;margin-bottom:5px;color:Red">信息填写不全,请检查</div>
    <div style="text-align:center">编辑职位信息</div>
    <hr />
        <div style="height:30px"><span>标题&nbsp;&nbsp;</span><asp:TextBox AutoPostBack="true" ID="title" runat="server" style="width:560px"></asp:TextBox></div>
        <div style="height:30px"><span>公司类型&nbsp;&nbsp;</span>
        <asp:DropDownList ID="companyType" runat="server">
            <asp:ListItem Value="中国公司">中国公司</asp:ListItem>
            <asp:ListItem Value="日本公司">日本公司</asp:ListItem>
            <asp:ListItem Value="欧美公司">欧美公司</asp:ListItem>
        </asp:DropDownList>

        <span>&nbsp;&nbsp;语言&nbsp;&nbsp;</span>
        <asp:DropDownList ID="language" runat="server">
            <asp:ListItem Value="中文">中文</asp:ListItem>
            <asp:ListItem Value="日文">日文</asp:ListItem>
            <asp:ListItem Value="英文">英文</asp:ListItem>
        </asp:DropDownList>
        </div>
        <div style="height:30px"><span>内容&nbsp;&nbsp;</span><br /></div> 
        <CKEditor:CKEditorControl ID="positionContent" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
        
        <div style="text-align:center;padding-top:10px">
           <asp:Button Text="提交" runat="server" ID="submitPosition" 
                style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" 
                onclick="submitPosition_Click"/>
        </div>
    </div>

</div>
</div>

</div>
<!-- #include file="../bottom.aspx" -->
</form>
</body>
</html>