<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="RecruitWeb.admin.main" %>
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
    }
    table tr
    {
        line-height:30px;
        padding-top:5px;
    }
    </style>
</head>

<body>
<form id="Form1" runat="server">
<!-- #include file="../nav.aspx"-->
<div class="container">
<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="#insights" role="tab" data-toggle="tab">行业视角</a></li>
  <li role="presentation"><a href="#position" role="tab" data-toggle="tab">职位信息</a></li>
  <li role="presentation"><a href="#resume" role="tab" data-toggle="tab">简历查看</a></li>
</ul>
<hr />
<div class="tab-content">
<div id="insights" role="tabpanel" class="tab-pane active" >
    <div style="width:500px;margin:auto;font-size:12px">
    <table style="font-size:12px">
    <tr><td style="padding-right:20px;text-align:right">图片</td><td>
<asp:FileUpload  id="imgUpload" runat="server"/></td>
    </tr>

    <tr><td style="padding-right:20px;text-align:right">文字</td><td>
<asp:TextBox TextMode="MultiLine" Rows="5" Columns="60"   id="contentText" runat="server"/></td>
    </tr>

    <tr><td style="padding-right:20px;text-align:right">栏目</td><td>
<asp:DropDownList ID="area" runat="server">
<asp:ListItem>金融服务</asp:ListItem>
<asp:ListItem>制造工业</asp:ListItem>
<asp:ListItem>能源及化工</asp:ListItem>
<asp:ListItem>汽车及配件</asp:ListItem>
<asp:ListItem>生命科学</asp:ListItem>
<asp:ListItem>酒店地产</asp:ListItem>
</asp:DropDownList>
    </td>
    </tr>
    <tr><td style="padding-right:20px;text-align:right">文档</td><td>
    <asp:FileUpload  id="docUpload" runat="server"/></td>
    </tr>
    <tr><td style="padding-right:20px;text-align:right">语言</td><td>
<asp:DropDownList ID="language" runat="server">
<asp:ListItem>中文</asp:ListItem>
<asp:ListItem>英文</asp:ListItem>
<asp:ListItem>日文</asp:ListItem>

</asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td colspan="2">
    <asp:Button Text="提交" ID="submitButton" runat="server" style="width:100px;"/>
    </td>
    </tr>
</table>
</div>
</div>

<div id="position" role="tabpanel" class="tab-pane" >
    <div style="width:600px;margin:auto">
    <div style="line-height:30px"><span>标题&nbsp;&nbsp;</span><asp:TextBox ID="title" runat="server" style="width:560px"></asp:TextBox></div>
    <div style="line-height:30px"><span>内容&nbsp;&nbsp;</span><br />
    <CKEditor:CKEditorControl ID="CKEditor1" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
    </div> 
       <asp:Button Text="提交" runat="server" ID="submitPosition" />
    </div>
</div>

<div id="resume" role="tabpanel" class="tab-pane" >
简历查看
</div>
</div>

<!-- #include file="../bottom.aspx" -->
</form>
</body>
</html>