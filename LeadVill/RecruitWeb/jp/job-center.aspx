<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-center.aspx.cs" Inherits="RecruitWeb.jp_job_center" %>

<html>
<head>
    <title>
    Job Center | SagePower
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
			    <li class="active">ジョブセンター</li>
		    </ul>
    <div class="row">
    <div class="col-md-3 leftText">
        <p>我が社（セジパワー）を選択してありがとうございます。わが社の主旨は、により専門的な意見を提供し、より顧客側の視点に考え、よりキャリア生涯にふさわしい仕事とアドバイスを提供することであります。</p>
<p>我が社は、適切な仕事チャンスを提供する以外に、あなたは獲得できるのは：①ヒュマンリーソスの市場報告書，②雇主分析，③キャリアプランのアドバイス，④給料報酬のアドバイス，⑤面接テクニクのトレーニングなど。</p>
</div>
    <div class="col-md-9" style="border-left:1px solid lightgrey">
    <div style="width:95%;margin:auto;color:Grey">オフィス</div>
    <hr />

    <asp:DataGrid runat="server" ID="positionList" PagerStyle-PrevPageText="前" 
        PagerStyle-NextPageText="次" AllowPaging="true"  AutoGenerateColumns="false" 
        PageSize="20" style="width:95%;margin:auto;border:none" 
            onpageindexchanged="positionList_PageIndexChanged">
   <HeaderStyle CssClass="jobitemHeader" />
    <Columns>
   
    <asp:HyperLinkColumn HeaderText="职位列表" DataTextField="titleText" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/jp/job-detail.aspx?id={0}"></asp:HyperLinkColumn>
   
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
