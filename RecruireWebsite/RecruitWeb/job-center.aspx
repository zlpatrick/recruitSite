<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-center.aspx.cs" Inherits="RecruitWeb.job_center" %>

<html>
<head>
    <title>
    工作机会 | 赛启咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->
    <style>
    .leftText
    {
        padding-left:20px;
        padding-right:20px;
    }
    
    .leftText p
    {
        line-height:25px;  
    }
     .jobitem
    {
        padding-left:20px;
        line-height:25px;
       
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
        height:30px;
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
    
        <div class="row jobitem" >
            <div class="jobitem-title"><a href="job-detail.aspx">某国有大型企业招聘软件工程师一名</a> </div>
            <p style="padding-left:20px;padding-top:10px">我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务。我们的候选人皆为来自住宅地产、购物中心及城市综合体、旅游地产的专业技术人才及中高级管理人才。 
更多信息，请咨询我们的顾问 – Roger Wang：Roger@leadvilles.com</p>
           
        </div>
        <hr />
        <div class="row jobitem">
            <div class="jobitem-title">[上海] 某国有大型企业招聘软件工程师一名</div>
            <p style="padding-left:20px;padding-top:10px">我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务。我们的候选人皆为来自住宅地产、购物中心及城市综合体、旅游地产的专业技术人才及中高级管理人才。 
更多信息，请咨询我们的顾问 – Roger Wang：Roger@leadvilles.com</p>
          
        </div>
        <hr />
        <div class="row jobitem">
            <div class="jobitem-title">[上海] 某国有大型企业招聘软件工程师一名</div>
            <p style="padding-left:20px;padding-top:10px">我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务。我们的候选人皆为来自住宅地产、购物中心及城市综合体、旅游地产的专业技术人才及中高级管理人才。 
更多信息，请咨询我们的顾问 – Roger Wang：Roger@leadvilles.com</p>
           
        </div>
        <hr />
        <div class="row jobitem">
            <div class="jobitem-title">[上海] 某国有大型企业招聘软件工程师一名</div>
            <p style="padding-left:20px;padding-top:10px">我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务。我们的候选人皆为来自住宅地产、购物中心及城市综合体、旅游地产的专业技术人才及中高级管理人才。 
更多信息，请咨询我们的顾问 – Roger Wang：Roger@leadvilles.com</p>
           
        </div>
    


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
