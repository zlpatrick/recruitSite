<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-detail.aspx.cs" Inherits="RecruitWeb.job_detail" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>职位详情 | 赛启咨询</title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->
    <style>
   
    .jobitem-title
    {
        font-size:12px;
        color:grey;
        
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
    
    </style>
</head>
<body>
<!-- #include file="nav.aspx"-->
    <form id="form1" runat="server">
    <div class="container">
        <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">职位详情</li>
		    </ul>

        <div class="jobitem-title"><%=jobTitle %> <asp:Button runat="server" 
                ID="applyPosition" text="申请该职位" onclick="applyPosition_Click"/></div>
        <hr />
        <div>
        <%=jobContent %>
        </div>
       

        
    </div>



    </form>
<!-- #include file="bottom.aspx"-->
</body>
</html>
