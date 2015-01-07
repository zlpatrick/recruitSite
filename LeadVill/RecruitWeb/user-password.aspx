<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-password.aspx.cs" Inherits="RecruitWeb.user_password" %>

<html>
<head>
    <title>
    修改密码 | 里德咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->
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
        width:100%;
        height:25px;
        border:1px solid lightgrey;
    }
    
    label
    {
        font-weight:normal;
        margin-left:5px;
        margin-right:20px;
    }
    
    #thanksTable
    {
        display:none;
    }
    </style>
    <script language="javascript">
        function editCheck() {
            var originalPS = $("#originalPS")[0].value;
            var result = true;
            if (originalPS.length <= 0) {
                $("#originalPS").css("border", "1px solid red");
                result = false;
            }
            else {
                $("#originalPS").css("border", "1px solid lightgrey");
            }

            var newPS = $("#newPS")[0].value;
            if (newPS.length <= 0) {
                $("#newPS").css("border", "1px solid red");
                result = false;
            }
            else {
                $("#newPS").css("border", "1px solid lightgrey");
            }

            var newPSRe = $("#newPSRe")[0].value;
            if (newPSRe.length <= 0) {
                $("#newPSRe").css("border", "1px solid red");
                result = false;
            }
            else {
                $("#newPSRe").css("border", "1px solid lightgrey");
            }

            if (newPS != newPSRe) {
                $("#newPSRe").css("border", "1px solid red");
                $("#newPS").css("border", "1px solid red");
                result = false;
            }
            else if(newPS != ''){
                $("#newPS").css("border", "1px solid lightgrey");
                $("#newPSRe").css("border", "1px solid lightgrey");
            }

            return result;
        }
    </script>
</head>

<body>

<!-- #include file="nav.aspx"-->
<form id="Form1" runat="server" onsubmit="return editCheck()">
<div class="container">
     <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">修改密码</li>
		    </ul>
<div class="row">
    <div class="col-md-3">
        <div class="list-group">
          <a href="user-profile.aspx" class="list-group-item">
            个人基本信息
          </a>
          <a href="user-password.aspx" class="list-group-item active">
            修改密码
          </a>
          <a href="user-application.aspx" class="list-group-item">已申请职位</a>
          <a href="user-resume.aspx" class="list-group-item">简历管理</a>
        
        </div>
    </div>
<div class="col-md-9">


           
      <table style="width:400px;margin:auto;font-size:12px;color:Grey;" id="updateTable">
      <tr><td>原密码：</td><td><asp:TextBox ID="originalPS" runat="server" TextMode="Password" ></asp:TextBox></td><td></td></tr>
     <tr><td>新密码：</td><td><asp:TextBox ID="newPS" runat="server" TextMode="Password" ></asp:TextBox></td><td></td></tr>
     <tr><td>确认新密码：</td><td><asp:TextBox ID="newPSRe" runat="server" TextMode="Password" ></asp:TextBox></td><td></td></tr>

     
      <tr><td></td><td style="text-align:center"><asp:Button ID="editButton" 
              runat="server" Text="更新密码"
              
              style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" onclick="editButton_Click" 
             /></td><td></td></tr>
             <tr><td colspan="3"><span style="color:Red">原密码不正确，请重试</span></td></tr>
      </table>

      <table style="width:400px;margin:auto;font-size:12px;color:Grey;" id="thanksTable">
      <tr><td style="text-align:center">感谢您的操作，您的密码已经更新</td></tr>
      </table>
</div>

</div></div>
        
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>