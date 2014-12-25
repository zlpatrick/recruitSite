<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main-insights-list.aspx.cs" Inherits="RecruitWeb.admin.main_insights_list" %>

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
       line-height:25px;
    }
    
    #insightsList
    {   
        width:80%;
        margin:auto;
        border-color:lightgrey;
    }
    
    #insightsList tr
    {
        height:30px;
        font-size:12px;
    }
    
    #insightsList tr td
    {
        padding-left:10px;
        padding-right:10px;
    }
    
    .insightsListHeader
    {
        background-color:grey;
        color:White;
    }
    
    .insightsRow
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
				    href="/index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">后台管理</li>
		    </ul>


<div class="row">
<div class="col-md-3">
<div class="list-group">
  <a href="/admin/main-insights-add.aspx" class="list-group-item">
    添加行业视角
  </a>
  <a href="/admin/main-insights-list.aspx" class="list-group-item active">行业视角列表</a>
  <a href="/admin/main-position-add.aspx" class="list-group-item">添加新职位</a>
  <a href="/admin/main-position-list.aspx" class="list-group-item">职位信息列表</a>
  <a href="/admin/main-resume-list.aspx" class="list-group-item">简历信息列表</a>
</div>
</div>
<div class="col-md-9">

<asp:DataGrid runat="server" ID="insightsList" PagerStyle-PrevPageText="上一页" 
        PagerStyle-NextPageText="下一页" AllowPaging="true" AutoGenerateColumns="false" 
        PageSize="10" onpageindexchanged="insightsList_PageIndexChanged">
    <HeaderStyle CssClass="insightsListHeader" />
    <ItemStyle CssClass="insightsRow" />
    <Columns>
    <asp:BoundColumn DataField="titleText" HeaderText="标题"></asp:BoundColumn>
    <asp:BoundColumn DataField="areaText" HeaderText="板块"></asp:BoundColumn>
    <asp:BoundColumn DataField="submitDateTime" HeaderText="提交时间"></asp:BoundColumn>
    <asp:HyperLinkColumn HeaderText="编辑" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/admin/main-insights-edit.aspx?id={0}" Text="编辑"></asp:HyperLinkColumn>
    <asp:HyperLinkColumn  HeaderText="删除" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/admin/main-insights-delete.aspx?id={0}" Text="删除"></asp:HyperLinkColumn>
    </Columns>
    </asp:DataGrid>





</div>
</div>

</div>
<!-- #include file="../bottom.aspx" -->
</form>
</body>
</html>

