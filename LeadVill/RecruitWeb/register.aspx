<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RecruitWeb.register" %>

<html>
<head>
    <title>
    创建账号 | 里德咨询
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
        function checkReg() {
            var userid = $("#memberID")[0].value;
            var result = true;
            if (userid.indexOf('@') < 0) {
                $("#memberID").css("border", "1px solid red");
                result = false;
            }
            else {
                $("#memberID").css("border", "1px solid lightgrey");
            }
            if (userid.indexOf('.') < 0) {
                $("#memberID").css("border", "1px solid red");
                result = false;
            }
            else {
                $("#memberID").css("border", "1px solid lightgrey");
            }

            var ps = $("#ps")[0].value;
            if (ps.length < 6) {
                $("#ps").css("border", "1px solid red");
                result = false;
            }
            else {
                $("#ps").css("border", "1px solid lightgrey");
            }

            var repass = $("#repass")[0].value;
            if (ps != repass) {
                $("#repass").css("border", "1px solid red");
                $("#ps").css("border", "1px solid red");
                result = false;
            }
            else if (ps != '') {
                $("#repass").css("border", "1px solid lightgrey");
                $("#ps").css("border", "1px solid lightgrey");
            }
            else {
                $("#repass").css("border", "1px solid red");
                $("#ps").css("border", "1px solid red");
                result = false;
            }

            var name = $("#name")[0].value;
            if (name.length <= 0) {
                $("#name").css("border", "1px solid red");
                result = false;
            }
            else {
                $("#name").css("border", "1px solid lightgrey");
            }

           
            var mobile = $("#mobile")[0].value;
            if (mobile.length <= 0) {
                $("#mobile").css("border", "1px solid red");
                result = false;
            }
            else {
                $("#mobile").css("border", "1px solid lightgrey");
            }

            
            return result;
        }

        function successReg() {
            $("#regTable").css("display", "none");
            $("#thanksTable").css("display", "block");
        }
    </script>
</head>

<body>

<!-- #include file="nav.aspx"-->
<form id="Form1" runat="server" onsubmit="return checkReg()">
<div class="container">
     <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">创建账号</li>
		    </ul>
           
    <div class="row">
     
      <div class="col-md-3" style="padding:25px;color:grey;line-height:28px">
      <p><span class="glyphicon glyphicon-star"></span> 注册成为会员以后，您将进入我们的人才数据库
      </p>
      <p><span class="glyphicon glyphicon-star"></span> 只有当合适您的工作机会出现时，我们的专业职业顾问才会直接与您沟通。</p>
      
      </div>
      <div class="col-md-9" style="border-left:1px solid lightgrey">
      <table style="width:600px;margin:30px auto;font-size:12px;color:Grey;" id="regTable">
      <tr><td>会员ID：</td><td><asp:TextBox ID="memberID" runat="server"></asp:TextBox></td><td style="text-align:left">&nbsp;* 请用邮箱作为ID</td></tr>
      <tr><td>密码：</td><td><asp:TextBox ID="ps" TextMode="Password" runat="server"></asp:TextBox></td><td>&nbsp;* 长度至少为6</td></tr>
      <tr><td>确认密码：</td><td><asp:TextBox ID="repass"  TextMode="Password"  runat="server"></asp:TextBox></td><td>&nbsp;*</td></tr>
      <tr><td>姓名：</td><td><asp:TextBox ID="name" runat="server"></asp:TextBox></td><td>&nbsp;*</td></tr>
       
      <tr><td>手机：</td><td><asp:TextBox ID="mobile" runat="server"></asp:TextBox></td><td>&nbsp;*</td></tr>
     
       <tr><td colspan="3"><hr /></td></tr>
      <tr><td></td><td style="text-align:center"><asp:Button ID="regButton" 
              runat="server" Text="创建账号" 
              style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" 
              onclick="regButton_Click"/></td><td></td></tr>
      </table>

      <table style="width:600px;margin:30px auto;font-size:12px;color:Grey;" id="thanksTable">
      <tr><td style="text-align:center">感谢您的注册,请返回<a href="index.aspx">首页</a>登录</td></tr>
      </table>
      </div>
    </div>
</div>


        
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>
