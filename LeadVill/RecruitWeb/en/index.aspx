<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RecruitWeb.en_Default" %>
<html>
<head>
    <title>
    Home Page | Leadvill
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="/common.aspx" -->

    <style>
    .home-section-header
    {
        color:#333;
    }
    .home-section-body p
    {
        margin:0px 0px 15px;
        color:grey;
    }
    hr
    {
        margin-top:10px;
        margin-bottom:20px;
    }
    
     .bannerText
     {
         position:absolute;
         top:100px;
         left:50px;
     }
     
    
    
    
    .jumbotron img
    {
        width:100%;
        max-height:600px;
    }
    </style>
</head>

<body>

<!-- #include file="nav.aspx"-->
<form id="Form1" runat="server">
<div class="container">
    <div class="jumbotron" style="border-radius:0px;padding:0;background-color:White;position:relative">
    <%Random Rdm = new Random();
      int imgIndex = Rdm.Next(1, 5);
     
 %>
    <img src="/img/home-<%=imgIndex %>.jpg" class="img-responsive" />
    </div>
    
    

    
</div>
<!-- #include file="bottom.aspx" -->
</form>
</body>
</html>
