<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-resume.aspx.cs" Inherits="RecruitWeb.en.user_resume" %>

<html>
<head>
    <title>
    Resume Management | LeadVill
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
    </style>
</head>

<body>

<!-- #include file="nav.aspx"-->
<form id="Form1" runat="server">
<div class="container">
     <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">Home Page</a><span class="divider"></span></li>
			    <li class="active">Resume Management</li>
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
          <a href="user-application.aspx" class="list-group-item">Applied Openings</a>
          <a href="user-resume.aspx" class="list-group-item active">Resume Management</a>
        
        </div>
    </div>
<div class="col-md-9">
    <%
        if (this.resumeID == null)
        {
         %>
                <table style="font-size:12px;width:300px;margin:auto">
                        
                        <tr><td>Select File：</td><td><asp:FileUpload ID="yourCV" runat="server" /></td></tr>
                        
                        <tr><td colspan="2" style="text-align:left"><asp:Button Text="Submit" runat="server" ID="submitYourCV" 
                
                                
                                style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" onclick="submitYourCV_Click"
                /></td></tr>
                    
                    </table>
           <%
        }
        else
        { %>
       <table style="font-size:12px;width:400px;margin:auto">
                        <tr><td colspan="2">Thanks for submitting your resume <asp:Button Text="View" runat="server" ID="Button1" 
                                
                                style="border: none;height: 30px;line-height: 30px;outline:none;padding-left: 20px;padding-right: 10px; color:grey;background-color:white;margin-left:20px" 
                                onclick="Button1_Click" />
                                <asp:Button Text="Delete" runat="server" ID="Button2" 
                                
                                style="border: none;height: 30px;line-height: 30px;outline:none;padding-left: 10px;padding-right: 20px; color:grey;background-color:white" 
                                onclick="Button2_Click" /></td></tr>
                        
                       
                    
                    </table>
       <%
        } %>
</div>

</div></div>
<div style="height:150px">&nbsp;</div>
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>