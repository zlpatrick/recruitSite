<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-application.aspx.cs" Inherits="RecruitWeb.en.user_application" %>

<html>
<head>
    <title>
    Opening Application | Leadvill
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="/common.aspx" -->
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
        width:90%;
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
        background-color:#eee;
        color:grey;
    }
    </style>
</head>

<body>

<!-- #include file="nav.aspx"-->
<form id="Form1" runat="server">
<div class="container">
     <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">Home Page</a><span class="divider"></span></li>
			    <li class="active">Opening Application</li>
		    </ul>
<div class="row">
    <div class="col-md-3">
        <div class="list-group">
          <a href="user-profile.aspx" class="list-group-item">
            Basic Profile
          </a>
          <a href="user-password.aspx" class="list-group-item">
            Edit Password
          </a>
          <a href="user-application.aspx" class="list-group-item active">Applied Openings</a>
          <a href="user-resume.aspx" class="list-group-item">Resume Management</a>
        
        </div>
    </div>
<div class="col-md-9">


           <asp:DataGrid runat="server" ID="applyList" AllowPaging="true" 
PagerStyle-PrevPageText="Previous Page" PagerStyle-NextPageText="Next Page"
        AutoGenerateColumns="false" PageSize="10" onpageindexchanged="applyList_PageIndexChanged" 
        >
    <HeaderStyle CssClass="applyListHeader" />
    <ItemStyle CssClass="applyRow" />
    <Columns>
    <asp:HyperLinkColumn DataTextField="titleText" DataNavigateUrlField="positionId" DataNavigateUrlFormatString="/en/job-detail.aspx?id={0}" HeaderText="Opening Name"></asp:HyperLinkColumn>
    <asp:BoundColumn DataField="applyDateTime" HeaderText="Application Time"></asp:BoundColumn>
    <asp:HyperLinkColumn  HeaderText="Operation" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/delete-application.aspx?id={0}" Text="Cancel"></asp:HyperLinkColumn>
    </Columns>
    </asp:DataGrid>
      
</div

</div></div>
        
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>

