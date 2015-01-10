<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-profile.aspx.cs" Inherits="RecruitWeb.en.user_profile" %>

<html>
<head>
    <title>
    Profile | Leadvill
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
			    <li class="active">Profile</li>
		    </ul>
<div class="row" style="margin-bottom:20px;margin-top:20px">
    <div class="col-md-3">
        <div class="list-group">
          <a href="user-profile.aspx" class="list-group-item active">
            Basic Profile
          </a>
          <a href="user-password.aspx" class="list-group-item">
            Edit Password
          </a>
          <a href="user-application.aspx" class="list-group-item">Applied Openings</a>
          <a href="user-resume.aspx" class="list-group-item">Resume Management</a>
        
        </div>
    </div>
<div class="col-md-9" style="border-left:1px solid lightgrey">


           
      <table style="width:690px;margin: auto auto 30px auto;font-size:12px;color:Grey;">
      <tr><td>Member ID：</td><td><asp:TextBox ID="memberID" runat="server" Enabled="false"></asp:TextBox></td><td></td></tr>
            <tr><td>Name：</td><td><asp:TextBox ID="name" runat="server"></asp:TextBox></td><td></td></tr>
      
        <tr><td>Date Of Birth：</td><td><asp:TextBox ID="dateOfBirth" runat="server"></asp:TextBox></td><td>&nbsp;YYYY-MM-DD</td></tr>
      <tr><td>Mobile Phone：</td><td><asp:TextBox ID="mobile" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>Current Company：</td><td><asp:TextBox ID="currentCompany" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>Current Position：</td><td><asp:TextBox ID="currentPosition" runat="server"></asp:TextBox></td><td></td></tr>
      <tr><td>Current Location：</td><td><asp:DropDownList ID="location" runat="server">
      <asp:ListItem Value="Shanghai">Shanghai</asp:ListItem>
      <asp:ListItem Value="Beijing">Beijing</asp:ListItem>
      <asp:ListItem Value="Guangzhou">Guangzhou</asp:ListItem>
      <asp:ListItem Value="Shenzhen">Shenzhen</asp:ListItem>
      <asp:ListItem Value="Others">Others</asp:ListItem>
      </asp:DropDownList></td><td></td></tr>
     
      <tr><td>Interested Areas：</td><td>
      <asp:CheckBox id="financeCheckBox" runat="server" Text="Finance"></asp:CheckBox>
      <asp:CheckBox id="autoCheckBox" runat="server" Text="Auto & Components"></asp:CheckBox>
      <asp:CheckBox id="lifeCheckBox" runat="server" Text="Life Science"></asp:CheckBox><br />
      <asp:CheckBox id="powerCheckBox" runat="server" Text="Energy & Chemical"></asp:CheckBox>
      <asp:CheckBox id="manufCheckBox" runat="server" Text="Manufacturing Industry"></asp:CheckBox>
      <asp:CheckBox id="hotelCheckBox" runat="server" Text="Hotel & Real Estate"></asp:CheckBox>
      </td><td></td></tr>
      <tr><td colspan="3"><hr /></td></tr>
      <tr><td></td><td style="text-align:center"><asp:Button ID="editButton" 
              runat="server" Text="Update Profile"
              
              style="border: none;height: 30px;line-height: 30px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" onclick="editButton_Click" 
             /></td><td></td></tr>
      </table>
</div>

</div></div>
        
<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>


