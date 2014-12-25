﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-detail.aspx.cs" Inherits="RecruitWeb.job_detail" %>

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

        <div class="jobitem-title"><%=jobTitle %> <a href="#" data-toggle="modal" data-target="#UploadCV" style="margin-left:20px"> 上传简历 </a></div>
        <hr />
        <div>
        <%=jobContent %>
        </div>
       

        
    </div>

<div id="UploadCV" class="modal fade in" tabindex="-1" aria-labelledby="seekFeedbackTitle" role="dialog" aria-hidden="false">
        <table height="100%" width="100%">
        <tbody><tr><td valign="middle">
		<div class="modal-dialog feedbackDialogWidth">
			<div class="modal-content">
				<div class="modal-header feedbackHeader">
							<button type="button" class="close feedbackClose" data-dismiss="modal" aria-hidden="true">×</button>
							<div class="modal-title" style="font-size:12px">上传简历</div>
				</div>
                <div style="padding-top:20px;padding-bottom:20px">
                    <table style="font-size:12px;">
                        <tr><td>您的姓名</td><td><asp:TextBox ID="yourName" runat="server" style="width:85%"></asp:TextBox></td></tr>
                        <tr><td>您的邮箱</td><td><asp:TextBox ID="yourEmail" runat="server" style="width:85%"></asp:TextBox></td></tr>
                        <tr><td>选择文件：</td><td><asp:FileUpload ID="yourCV" runat="server" /></td></tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                        <tr><td colspan="2" style="text-align:center"><asp:Button Text="提交" runat="server" ID="submitYourCV" 
                
                                style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" onclick="submitYourCV_Click" 
                /></td></tr>
                    
                    </table>
                </div>
                
			</div>
		</div>
		</td></tr>
		</tbody></table>
</div>


    </form>
<!-- #include file="bottom.aspx"-->
</body>
</html>
