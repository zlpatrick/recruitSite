<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insights-area.aspx.cs" Inherits="RecruitWeb.insights_area" %>

<html>
<head>
    <title>
    行业视角 | 赛启咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->
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
      <%
          if (ds != null && ds.Tables[0].Rows.Count > 0)
          {
              for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
              {
                  string imgUrl = "/InsightFiles/thumbnail/"+ ds.Tables[0].Rows[i]["thumbnailText"].ToString();
                  string titleTxt = ds.Tables[0].Rows[i]["titleText"].ToString();
                  string contentTxt = ds.Tables[0].Rows[i]["contentText"].ToString();
                  string docLink = "/InsightFiles/document/" + ds.Tables[0].Rows[i]["documentLoc"].ToString();
                  if (i % 2 == 0)
                  {
           %>
     <div class="row">
       
         <div class="col-md-6">
            
            <div class="row insights-section-body">
                <div class="col-md-2"><img src="<%=imgUrl %>" class="img-responsive" /></div>
                <div class="col-md-10">
                <p><%=titleTxt%></p>
                <p><%=contentTxt %></p>
                <p><a href="<%=docLink %>" target="new">下载文档</a></p>
                
                
                </div>
            </div>
        </div><%   }
                  else
                  {%>
        <div class="col-md-6">
           
            <div class="row insights-section-body">
               
                <div class="col-md-10">
                <p  style="text-align:right"><%=titleTxt%></p>
                <p><%=contentTxt%></p>
                 <p style="text-align:right"><a href="<%=docLink %>" target="new">下载文档</a></p>
                </div>
                 <div class="col-md-2"><img src="<%=imgUrl %>" class="img-responsive" /></div>
            </div>
        </div>
     </div>
                <%  
                 }

                    if (i == (ds.Tables[0].Rows.Count - 1))
                    {
                     %>
                     <div class="col-md-6">
                    </div>
                 </div>
                 <%
                    }
                  

              }
          } %>
     

        
</div>

<!-- #include file="bottom.aspx"-->
</body>
</html>


