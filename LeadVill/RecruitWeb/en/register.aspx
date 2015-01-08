<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RecruitWeb.en.register" %>

<html>
<head>
    <title>
    Create Account | LeadVill
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
				    href="index.aspx">Home Page</a><span class="divider"></span></li>
			    <li class="active">Create Account</li>
		    </ul>
      <div class="row">
      <div class="col-md-3"  style="padding:25px;color:grey;line-height:28px">
      <p><span class="glyphicon glyphicon-star"></span> After your registration，you will be one of our talents .</p>

 <p><span class="glyphicon glyphicon-star"></span> Only when there is a job that fits you, our professional consultants will contact you directly.</p></div>
      <div class="col-md-9" style="border-left:1px solid lightgrey">
      <table style="width:600px;margin:30px auto;font-size:12px;color:Grey;" id="regTable">
      <tr><td>Member ID：</td><td><asp:TextBox ID="memberID" runat="server"></asp:TextBox></td><td style="text-align:left">&nbsp;* Please use Email address</td></tr>
      <tr><td>Password：</td><td><asp:TextBox ID="ps" TextMode="Password" runat="server"></asp:TextBox></td><td>&nbsp;* The length is at least 6</td></tr>
      <tr><td>Confirm Password：</td><td><asp:TextBox ID="repass"  TextMode="Password"  runat="server"></asp:TextBox></td><td>&nbsp;*</td></tr>
      <tr><td>Name：</td><td><asp:TextBox ID="name" runat="server"></asp:TextBox></td><td>&nbsp;*</td></tr>
      
        
      <tr><td>Mobile：</td><td><asp:TextBox ID="mobile" runat="server"></asp:TextBox></td><td>&nbsp;*</td></tr>
  
       <tr><td colspan="3"><hr /></td></tr>
      <tr><td></td><td style="text-align:center"><asp:Button ID="regButton" 
              runat="server" Text="Create Account" 
              style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" 
              onclick="regButton_Click"/></td><td></td></tr>
      </table>

      <table style="width:600px;margin:30px auto;font-size:12px;color:Grey;" id="thanksTable">
      <tr><td style="text-align:center">Thanks for your registration, please return to <a href="index.aspx">Home Page</a> to login.</td></tr>
      </table>
      </div>

      </div>
</div>


        
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>

