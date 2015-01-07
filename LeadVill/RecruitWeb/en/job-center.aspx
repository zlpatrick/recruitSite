<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-center.aspx.cs" Inherits="RecruitWeb.en_job_center" %>

<html>
<head>
    <title>
    Job Center | LeadVill
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="/common.aspx" -->
    <style>
    .leftText
    {
        padding-left:20px;
        padding-right:20px;
        color:grey;
    }
    
    .leftText p
    {
        line-height:25px;  
    }
     .jobitemHeader
    {
        display:none;
       
    }
    .jobitem-title
    {
        font-size:12px;
    }
    table
    {
        margin:auto;
    }
    table tr
    {
        height:35px;
    }
    
    table tr td
    {
        border:none;
    }
    
    #positionList
    {
        font-size:12px;
    }
    </style>
</head>

<body>
<form runat="server">
<!-- #include file="nav.aspx"-->
<div class="container">
       <ul class="breadcrumb" style="background-color: white">
			    <li><a href="index.aspx">Home Page</a><span class="divider"></span></li>
			    <li class="active">Job Center</li>
		    </ul>
    <div class="row">
    <div class="col-md-3 leftText">
      <p><input type="text" placeholder="please input to search" ID="positionName" style="width:88%"/> <a href="#" id="searchButton" onclick="doSearch()"><span class="glyphicon glyphicon-search" style="font-size:15px;;margin-left:4px;position:relative;top:4px"></span></a></p>
    <p>Thanks for your choosing LEADVILL Consulting to be the associates on your career path, because we care about our candidates!</p>
<p>Besides excellent job opportunities, as a candidate, you can also acquire: HR market survey, target employer analysis, career development planning, remuneration proposal, interview skills training, etc.</p>

</div>

        
    <div class="col-md-9" style="border-left:1px solid lightgrey">
    <div style="width:95%;margin:auto;color:Grey">All Openings</div>
    <hr />

    <asp:DataGrid runat="server" ID="positionList" PagerStyle-PrevPageText="Previous Page" 
        PagerStyle-NextPageText="Next Page" AllowPaging="true"  AutoGenerateColumns="false" 
        PageSize="20" style="width:95%;margin:auto;border:none" 
            onpageindexchanged="positionList_PageIndexChanged">
   <HeaderStyle CssClass="jobitemHeader" />
    <Columns>
   
    <asp:HyperLinkColumn HeaderText="职位列表" DataTextField="titleText" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/en/job-detail.aspx?id={0}"></asp:HyperLinkColumn>
   
   </Columns>
    </asp:DataGrid>
    
    
     
    


    </div>
</div>
      
</div>

<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>
