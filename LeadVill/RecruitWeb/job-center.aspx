<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-center.aspx.cs" Inherits="RecruitWeb.job_center" %>

<html>
<head>
    <title>
    工作机会 | 里德咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->
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

<!-- #include file="nav.aspx"-->
<form id="Form1" runat="server">
<div class="container">
       <ul class="breadcrumb" style="background-color: white">
			    <li><a href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">工作机会</li>
		    </ul>
    <div class="row">
    <div class="col-md-3 leftText" style="border-right:1px solid #eeeeee">
    <p><input type="text" placeholder="请输入搜索职位名" ID="positionName" style="width:88%"/> <a href="#" id="searchButton" onclick="doSearch()"><span class="glyphicon glyphicon-search" style="font-size:15px;;margin-left:4px;position:relative;top:4px"></span></a></p>
        <p>感谢您选择里德作为职业生涯的伙伴。因为，除了客户，我们同样关心每一位候选人。</p>
<p>除了优秀的工作机会之外，您还可以获得：人力资源的市场报告，目标雇主分析，职业发展规划，薪资报酬建议，面试技巧培训等。</p>

</div>
    <div class="col-md-9" >
    <div style="width:95%;margin:auto;color:Grey">职位列表</div>
    <hr />

    <asp:DataGrid runat="server" ID="positionList" PagerStyle-PrevPageText="上一页" 
        PagerStyle-NextPageText="下一页" AllowPaging="true"  AutoGenerateColumns="false" 
        PageSize="20" style="width:95%;margin:auto;border:none" 
            onpageindexchanged="positionList_PageIndexChanged">
   <HeaderStyle CssClass="jobitemHeader" />
    <Columns>
   
    <asp:HyperLinkColumn HeaderText="职位列表" DataTextField="titleText" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/job-detail.aspx?id={0}"></asp:HyperLinkColumn>
   
   </Columns>
    </asp:DataGrid>
    
    
     
    


    </div>
</div>
      
</div>

<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>
