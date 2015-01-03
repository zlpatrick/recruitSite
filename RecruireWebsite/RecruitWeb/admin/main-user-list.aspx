<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main-user-list.aspx.cs" Inherits="RecruitWeb.admin.main_user_list" %>

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
    
    #userList
    {   
        width:100%;
        margin:auto;
        border-color:lightgrey;
    }
    
    #userList tr
    {
        height:30px;
        font-size:12px;
    }
    
    #userList tr td
    {
        padding-left:10px;
        padding-right:10px;
    }
    
    .userListHeader
    {
        background-color:grey;
        color:White;
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
  <a href="/admin/main-position-list.aspx" class="list-group-item">职位信息列表</a>
  <a href="/admin/main-resume-list.aspx" class="list-group-item">简历信息列表</a>
  <a href="/admin/main-user-list.aspx" class="list-group-item active">注册会员列表</a>
</div>
</div>
<div class="col-md-9">

<asp:DataGrid runat="server" ID="userList" AllowPaging="true" 
PagerStyle-PrevPageText="上一页" PagerStyle-NextPageText="下一页" 
        AutoGenerateColumns="false" PageSize="10" onpageindexchanged="userList_PageIndexChanged" 
        >
    <HeaderStyle CssClass="userListHeader" />
    <ItemStyle CssClass="userRow" />
    <Columns>
    <asp:BoundColumn DataField="username" HeaderText="姓名"></asp:BoundColumn>
    <asp:BoundColumn DataField="sex" HeaderText="性别"></asp:BoundColumn>
    <asp:BoundColumn DataField="userid" HeaderText="邮箱"></asp:BoundColumn>
    <asp:BoundColumn DataField="mobilePhone" HeaderText="手机"></asp:BoundColumn>
    <asp:BoundColumn DataField="currentCompany" HeaderText="当前公司"></asp:BoundColumn>
    <asp:BoundColumn DataField="interestArea" HeaderText="兴趣领域"></asp:BoundColumn>
    <asp:BoundColumn DataField="regDateTime" HeaderText="注册时间"></asp:BoundColumn>
    
    </Columns>
    </asp:DataGrid>



</div>
</div>

</div>
<!-- #include file="../bottom.aspx" -->
</form>
</body>
</html>
