<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-center.aspx.cs" Inherits="RecruitWeb.jp_job_center" %>

<html>
<head>
    <title>
    工作机会 | 赛启咨询
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
			    <li><a href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">工作机会</li>
		    </ul>
    <div class="row">
    <div class="col-md-3 leftText">
        <p>感谢您选择赛启咨询作为职业生涯的伙伴。因为，我们关心我们的候选人！</p>
<p>除了优秀的工作机会之外，您还可以获得：人力资源的市场报告，目标雇主分析，职业发展规划，薪资报酬建议，面试技巧培训等。</p>
<p>请将您的个人简历发送至：<a href="mailto:job@sagepowerhr.com">job@sagepowerhr.com</a></p>
<p>或直接<a href="#" data-toggle="modal" data-target="#UploadCV"> 上传 </a>简历给我们</p></div>
    <div class="col-md-9" style="border-left:1px solid lightgrey">
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
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>
