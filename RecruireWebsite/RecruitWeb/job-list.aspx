<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-list.aspx.cs" Inherits="RecruitWeb.job_list" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>职位列表 | 赛启咨询</title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->
    <style>
    #searchButton
    {
        border:none;
        background-color:grey;
    }
    
     .applyButton
    {
        border:none;
        
        padding:10px;
        background-color:grey;
        color:White;
    }
     .main-form input, .main-form select
    {
        width:300px;
        height:35px;
        font-size:14px;
        margin-right:20px;
        color:lightgrey;
        padding-left:5px;
    }
    .main-form
    {
        padding:20px;
        background-color:lightgrey;
    }
    
    .main-form select
    {
        width:200px;
    }
    
    .main-form a
    {
        padding:10px;
        background-color:grey;
        color:White;
    } 
    .jobitem
    {
        padding:20px;
        line-height:30px;
    }
    .jobitem-title
    {
        font-size:14px;
    }
    </style>
</head>
<body>
<!-- #include file="nav.aspx"-->
    <form id="form1" runat="server">
    <div class="container">
        <ul class="breadcrumb" style="background-color: white">
			    <li><span class="glyphicon glyphicon-home"></span> &nbsp;<a
				    href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">职位列表</li>
		    </ul>

        <div class="main-form">
            <input type="text" placeholder="请输入搜索职位名" ID="positionName"></input><asp:DropDownList placeholder="请选择职位地点" runat="server" ID="positionArea">
            <asp:ListItem Text="请选择职位地点"></asp:ListItem>
            </asp:DropDownList> <a href="#" id="searchButton"><span class="glyphicon glyphicon-search"></span> 搜索职位</a>
        </div>

        <div class="row jobitem">
            <div class="col-md-10"><div class="jobitem-title">[上海] 某国有大型企业招聘软件工程师一名</div>
            <p style="padding-left:20px;padding-top:10px">我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务。我们的候选人皆为来自住宅地产、购物中心及城市综合体、旅游地产的专业技术人才及中高级管理人才。 
更多信息，请咨询我们的顾问 – Roger Wang：Roger@leadvilles.com</p>
            </div>
            <div class="col-md-2" style="padding-top:30px"><a href="job-detail.aspx" id="A1" class="applyButton" style="float:right;">查看详情</a></div>
           
        </div>

        <div class="row jobitem">
            <div class="col-md-10"><div class="jobitem-title">[上海] 某国有大型企业招聘软件工程师一名</div>
            <p style="padding-left:20px;padding-top:10px">我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务。我们的候选人皆为来自住宅地产、购物中心及城市综合体、旅游地产的专业技术人才及中高级管理人才。 
更多信息，请咨询我们的顾问 – Roger Wang：Roger@leadvilles.com</p>
            </div>
            <div class="col-md-2" style="padding-top:30px"><a href="#" id="A2" class="applyButton" style="float:right;">查看详情</a></div>
           
        </div>

        <div class="row jobitem">
            <div class="col-md-10"><div class="jobitem-title">[上海] 某国有大型企业招聘软件工程师一名</div>
            <p style="padding-left:20px;padding-top:10px">我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务。我们的候选人皆为来自住宅地产、购物中心及城市综合体、旅游地产的专业技术人才及中高级管理人才。 
更多信息，请咨询我们的顾问 – Roger Wang：Roger@leadvilles.com</p>
            </div>
            <div class="col-md-2" style="padding-top:30px"><a href="#" id="A3" class="applyButton" style="float:right;">查看详情</a></div>
           
        </div>

        <div class="row jobitem">
            <div class="col-md-10"><div class="jobitem-title">[上海] 某国有大型企业招聘软件工程师一名</div>
            <p style="padding-left:20px;padding-top:10px">我们致力于帮助国际知名地产商和国际型酒店获得长期稳健的人力资源咨询服务。我们的候选人皆为来自住宅地产、购物中心及城市综合体、旅游地产的专业技术人才及中高级管理人才。 
更多信息，请咨询我们的顾问 – Roger Wang：Roger@leadvilles.com</p>
            </div>
            <div class="col-md-2" style="padding-top:30px"><a href="#" id="A4" class="applyButton" style="float:right;">查看详情</a></div>
           
        </div>
    </div>
    </form>
<!-- #include file="bottom.aspx"-->
</body>
</html>
