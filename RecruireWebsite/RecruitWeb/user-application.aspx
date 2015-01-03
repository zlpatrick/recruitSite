<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-application.aspx.cs" Inherits="RecruitWeb.user_application" %>

<html>
<head>
    <title>
    职位申请 | 赛启咨询
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
    
    #applyList
    {   
        width:80%;
        margin:auto;
        border-color:lightgrey;
    }
    
    #applyList tr
    {
        height:30px;
        font-size:12px;
    }
    
    #applyList tr td
    {
        padding-left:10px;
        padding-right:10px;
        text-align:left;
    }
    
    .applyListHeader
    {
        background-color:grey;
        color:White;
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
			    <li class="active">已申请职位</li>
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
          <a href="user-application.aspx" class="list-group-item active">已申请职位</a>
          <a href="user-resume.aspx" class="list-group-item">简历管理</a>
        
        </div>
    </div>
<div class="col-md-9">


           <asp:DataGrid runat="server" ID="applyList" AllowPaging="true" 
PagerStyle-PrevPageText="上一页" PagerStyle-NextPageText="下一页" 
        AutoGenerateColumns="false" PageSize="10" onpageindexchanged="applyList_PageIndexChanged" 
        >
    <HeaderStyle CssClass="applyListHeader" />
    <ItemStyle CssClass="applyRow" />
    <Columns>
    <asp:HyperLinkColumn DataTextField="titleText" DataNavigateUrlField="positionId" DataNavigateUrlFormatString="/job-detail.aspx?id={0}" HeaderText="职位名称"></asp:HyperLinkColumn>
    <asp:BoundColumn DataField="applyDateTime" HeaderText="申请时间"></asp:BoundColumn>
    <asp:HyperLinkColumn  HeaderText="操作" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/delete-application.aspx?id={0}" Text="取消"></asp:HyperLinkColumn>
    </Columns>
    </asp:DataGrid>
      
</div

</div></div>
        
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>
