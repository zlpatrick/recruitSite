<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-detail.aspx.cs" Inherits="RecruitWeb.en_job_detail" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Opening Detail | Leadvill</title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="/common.aspx" -->
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
				    href="index.aspx">Home</a><span class="divider"></span></li>
			    <li class="active">Opening Detail</li>
		    </ul>

        <div class="jobitem-title"><%=jobTitle %> <%if (Session["loginID"] != null)
                                                    { %><asp:Button runat="server" 
                ID="applyPosition" text="Apply for this position" onclick="applyPosition_Click" style="background-color:White;color:grey;border:none"/><%} %></div>
        <hr />
        <div>
        <p><strong>Salary range:</strong> <%=salary %></p>
        
        <p><strong>Responsibilities</strong></p>
        <div><%=jobContent %></div>

        <p><strong>Requirements</strong></p>
        <div><%=jobRequirement %></div>
        </div>
       
       
        
    </div>



    </form>
<!-- #include file="bottom.aspx"-->
</body>
</html>
