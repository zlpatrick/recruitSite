<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RecruitWeb._Default" %>
<html>
<head>
    <title>
    首页 | 赛启咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->

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
        opacity:0.6;
    }
    </style>
</head>

<body>
<form runat="server">
<!-- #include file="nav.aspx"-->
<div class="container">
    <div class="jumbotron" style="border-radius:0px;padding:0;background-color:White;position:relative">
    <img src="img/home.jpg" class="img-responsive" />
    </div>
    
    

    <div class="row">
        <div class="col-md-6">
            <div class="home-section-header" style="text-align:left"><span>视角 - Insights</span></div>
            <hr style="border-color:lightgrey"/>
            <div class="home-section-body">
            <p>[金融服务] 这些是能满足组织人力资源需求、超越客户预期的保障。 </p>
            <p>[生命科学] 因为关乎生死，医药和医疗一直都作为我们持续关注的热点行业</p>
            <p>[制造工业] 为我们的客户提供全方位的人才管理咨询服务。 </p>
            <p>[汽车及配件] 为我们的客户赢得全球化的人才竞争优势</p>
            <p>[能源及化工] 您在该领域组织发展所需的人才管理方案，我们将会是最优的顾问之一</p>
            <p>[酒店地产] 我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务</p>
             <p>[金融服务] 这些是能满足组织人力资源需求、超越客户预期的保障。 </p>
            <p>[生命科学] 因为关乎生死，医药和医疗一直都作为我们持续关注的热点行业</p>
            <p>[制造工业] 为我们的客户提供全方位的人才管理咨询服务。 </p>
            <p>[汽车及配件] 为我们的客户赢得全球化的人才竞争优势</p>
            </div>
        </div>
        <div class="col-md-6">
            <div class="home-section-header" style="text-align:right"><span>Opportunites - 机会</span></div>
            <hr style="border-color:lightgrey"/>
            <div class="home-section-body" style="text-align:right">
            <p>这些是能满足组织人力资源需求、超越客户预期的保障。 [金融服务]</p>
            <p>因为关乎生死，医药和医疗一直都作为我们持续关注的热点行业.[生命科学]</p>
            <p>为我们的客户提供全方位的人才管理咨询服务。[制造工业] </p>
            <p>为我们的客户赢得全球化的人才竞争优势.[汽车及配件]</p>
            <p>您在该领域组织发展所需的人才管理方案，我们将会是最优的顾问之一.[能源及化工] </p>
            <p>我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务.[酒店地产]</p>
             <p>这些是能满足组织人力资源需求、超越客户预期的保障。 [金融服务]</p>
            <p>因为关乎生死，医药和医疗一直都作为我们持续关注的热点行业.[生命科学]</p>
            <p>为我们的客户提供全方位的人才管理咨询服务。[制造工业] </p>
            <p>为我们的客户赢得全球化的人才竞争优势.[汽车及配件]</p>
            </div>
        </div>
    </div>
   
    
</div>
<!-- #include file="bottom.aspx" -->
</form>
</body>
</html>
