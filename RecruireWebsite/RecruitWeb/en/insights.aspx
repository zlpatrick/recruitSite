<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insights.aspx.cs" Inherits="RecruitWeb.en_insights" %>

<html>
<head>
    <title>
    行业视角 | 赛启咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="/common.aspx" -->
    <style type="text/css">
    .list-group-item span
    {
        float:right;
    }
    
    .insights-section-header
    {
        font-size:12px;
        height:40px;
        line-height:40px;
        border-bottom:solid 1px lightgrey;
        color:#555;
        padding-left:10px;
    }
    
    .insights-section-body
    {
        padding:20px;
        line-height:22px;
        color:grey;
    }
    </style>
</head>

<body>
<!-- #include file="nav.aspx"-->
<div class="container">
       <ul class="breadcrumb" style="background-color: white">
			    <li><a
				    href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">行业视角</li>
		    </ul>
     <div class="row">
       
         <div class="col-md-6">
            <div class="insights-section-header">金融服务</div>
            <div class="row insights-section-body">
                <div class="col-md-2"><img src="<%=financeImg %>" class="img-responsive" /></div>
                <div class="col-md-10">
                <p><%=financeTitle %></p>
                <p><%=financeContent %></p>
                <p><a href="insights-area.aspx?area=finance">更多..</a></p>
                
                </div>
            </div>
        </div>
        <div class="col-md-6">
           <div class="insights-section-header" style="text-align:right;padding-right:10px">汽车及配件</div>
            <div class="row insights-section-body">
               
                <div class="col-md-10">
                <p  style="text-align:right"><%=autoTitle %></p>
                <p><%=autoContent %></p>
                <p style="text-align:right"><a href="insights-area.aspx?area=auto">更多..</a></p>
                </div>
                 <div class="col-md-2"><img src="<%=autoImg %>" class="img-responsive" /></div>
            </div>
        </div>
     </div>
     <div class="row">

        <div class="col-md-6">
            <div class="insights-section-header">生命科学</div>
            <div class="row insights-section-body">
                <div class="col-md-2"><img src="<%=lifeImg %>" class="img-responsive" /></div>
                <div class="col-md-10">
                <p><%=lifeTitle %></p>
                <p><%=lifeContent %></p>
                <p><a href="insights-area.aspx?area=life">更多..</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
           <div class="insights-section-header"  style="text-align:right;padding-right:10px">能源及化工</div>
            <div class="row insights-section-body">
                
                <div class="col-md-10">
                <p  style="text-align:right"><%=powerTitle %></p>
                <p><%=powerContent %></p>
                <p style="text-align:right"><a href="insights-area.aspx?area=power">更多..</a></p>
                </div>
                <div class="col-md-2"><img src="<%=powerImg %>" class="img-responsive" /></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="insights-section-header">制造工业</div>
            <div class="row insights-section-body">
                <div class="col-md-2"><img src="<%=manufImg %>" class="img-responsive" /></div>
                <div class="col-md-10">
                <p><%=manufTitle %></p>
                <p><%=manufContent %></p>
                <p><a href="insights-area.aspx?area=manuf">更多..</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="insights-section-header"  style="text-align:right;padding-right:10px">酒店地产</div>
            <div class="row insights-section-body">
                
                <div class="col-md-10">
                <p  style="text-align:right"><%=hotelTitle %></p>
                <p><%=hotelContent %></p>
                <p style="text-align:right"><a href="insights-area.aspx?area=hotel">更多..</a></p>
                </div>
                <div class="col-md-2"><img src="<%=hotelImg %>" class="img-responsive" /></div>
            </div>
        </div>
    </div>  

        
</div>

<!-- #include file="bottom.aspx"-->
</body>
</html>

