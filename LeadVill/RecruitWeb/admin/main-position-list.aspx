<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main-position-list.aspx.cs" Inherits="RecruitWeb.admin.main_position_list" %>

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
    
    #positionList
    {   
        width:80%;
        margin:auto;
        border-color:lightgrey;
    }
    
    #positionList tr
    {
        height:30px;
        font-size:12px;
    }
    
    #positionList tr td
    {
        padding-left:10px;
        padding-right:10px;
    }
    .positionListHeader
    {
        background-color:grey;
        color:White;
    }
    
    .positionRow
    {
    }
    
    </style>
</head>

<body>

<!-- #include file="../nav.aspx"-->
<form id="Form1" runat="server">
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
  <a href="/admin/main-position-list.aspx" class="list-group-item active">职位信息列表</a>
  <a href="/admin/main-resume-list.aspx" class="list-group-item">简历信息列表</a>
  <a href="/admin/main-user-list.aspx" class="list-group-item">注册会员列表</a>
</div>
</div>
<div class="col-md-9">

<asp:DataGrid runat="server" ID="positionList" AllowPaging="true" 
        PagerStyle-PrevPageText="上一页" PagerStyle-NextPageText="下一页" 
        AutoGenerateColumns="false" PageSize="10" 
        onpageindexchanged="positionList_PageIndexChanged">
    <HeaderStyle CssClass="positionListHeader" />
    <ItemStyle CssClass="positionRow" />
    <Columns>
    <asp:BoundColumn DataField="titleText" HeaderText="职位名称"></asp:BoundColumn>
    <asp:BoundColumn DataField="companyType" HeaderText="公司类别"></asp:BoundColumn>
    <asp:BoundColumn DataField="submitDateTime" HeaderText="提交时间"></asp:BoundColumn>
    <asp:HyperLinkColumn HeaderText="编辑" Text="编辑" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/admin/main-position-edit.aspx?id={0}"></asp:HyperLinkColumn>
    <asp:HyperLinkColumn  HeaderText="删除" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/admin/main-position-delete.aspx?id={0}" Text="删除"></asp:HyperLinkColumn>
    </Columns>
    </asp:DataGrid>


</div>
</div>

</div>
<!-- #include file="../bottom.aspx" -->
</form>
</body>
</html>
