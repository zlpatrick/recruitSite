﻿<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RecruitWeb.en_Default" %>
<html>
<head>
    <title>
    Home | SagePower
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
        opacity:0.6;
    }
    </style>
</head>

<body>
<form runat="server">
<!-- #include file="nav.aspx"-->
<div class="container">
    <div class="jumbotron" style="border-radius:0px;padding:0;background-color:White;position:relative">
    <img src="/img/home.jpg" class="img-responsive" />
    </div>
    
    

    <div class="row">
        <div class="col-md-6">
            <div class="home-section-header" style="text-align:left"><a href="/en/insights.aspx"><span>Insights</span></a></div>
            <hr style="border-color:lightgrey"/>
            <div class="home-section-body">
            <%
                if (insights != null && insights.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < insights.Tables[0].Rows.Count; i++)
                    {
                        string title = insights.Tables[0].Rows[i]["titleText"].ToString();
                        string docLink = "/InsightFiles/document/"+insights.Tables[0].Rows[i]["documentLoc"].ToString();
                 %>

                 <p><a href="<%=docLink %>" target="new">title</a></p>
          
            <%
                    }
                }
            %>
            </div>
        </div>
        <div class="col-md-6">
            <div class="home-section-header" style="text-align:right"><a href="/en/job-center.aspx"><span>Job Center</span></a></div>
            <hr style="border-color:lightgrey"/>
            <div class="home-section-body" style="text-align:right">

             <%
                 if (positions != null && positions.Tables[0].Rows.Count > 0)
                 {
                     for (int i = 0; i < positions.Tables[0].Rows.Count; i++)
                     {
                         string title = positions.Tables[0].Rows[i]["titleText"].ToString();
                         string id = positions.Tables[0].Rows[i]["ID"].ToString();
                 %>
                 <p><a href="/en/job-detail.aspx?id=<%=id %>"><%=title %></a></p>
            <%
                     }
                 }
            %>
            
            </div>
        </div>
    </div>
   
    
</div>
<!-- #include file="bottom.aspx" -->
</form>
</body>
</html>
