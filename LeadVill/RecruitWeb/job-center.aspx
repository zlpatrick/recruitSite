<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-center.aspx.cs" Inherits="RecruitWeb.job_center" %>

<html>
<head>
    <title>
    工作机会 | 里德咨询
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="common.aspx" -->
    <style>
    .leftText
    {
        padding-left:20px;
        padding-right:20px;
        color:grey;
    }
    
    .leftText p
    {
        line-height:25px;  
    }
     .jobitemHeader
    {
        
       color:grey;
    }
    .jobitem-title
    {
        font-size:12px;
    }
    table
    {
        margin:auto;
    }
    table tr
    {
        height:35px;
    }
    
    table tr td
    {
        border:none;
    }
    
    #positionList
    {
        font-size:12px;
    }
    
    select
    {
        height:30px;
        color:darkgrey;
        width:88%;
    }
    
    </style>
    <script>
        function onSort() {
            var address = location.href;
            var sort = $("#sortBy")[0].value;
            if (sort != null && sort != "") {
                sort = "sort=" + sort;
                if (address.indexOf("?") == -1) {
                    address = address + "?";
                }
                if (address.indexOf("&sort=asc") >= 0) {
                    address = address.replace("&sort=asc", "");
                }
                if (address.indexOf("&sort=desc") >= 0) {
                    address = address.replace("&sort=desc", "");
                }
                if (address.indexOf("sort=asc")>=0) {
                    address=address.replace("sort=asc", "");
                }
                if (address.indexOf("sort=desc") >= 0) {
                    address = address.replace("sort=desc", "");
                }
                
                if ((address.indexOf("search") == -1) && (address.indexOf("area") == -1) && (address.indexOf("depart") == -1)) {
                    location.href = address + sort;
                }
                else {
                    
                    location.href = address + "&"+sort;
                }

            }
        }
    </script>
</head>

<body>

<!-- #include file="nav.aspx"-->
<form id="Form1" runat="server">
<div class="container">
       <ul class="breadcrumb" style="background-color: white">
			    <li><a href="index.aspx">首页</a><span class="divider"></span></li>
			    <li class="active">工作机会</li>
		    </ul>
    <div class="row">
    <div class="col-md-3 leftText" style="border-right:1px solid #eeeeee;">
    <p><select id="positionArea">
    <option value="">行业...</option>
    <option value="finance">金融服务</option>
    <option value="manuf">制造工业</option>
    <option value="power">能源及化工</option>
    <option value="auto">汽车及配件</option>
    <option value="life">生命科学</option>
    <option value="hotel">酒店地产</option>
    </select>
    </p>
    <p>
    <select id="positionDepartment">
    <option value="">职能...</option>
    <option value="sales">销售/市场</option>
    <option value="rd">研发/技术</option>
    <option value="supply">运营/供应链</option>
    <option value="legal">财务/法务</option>
    <option value="it">IT</option>
    <option value="hr">人力资源</option>
    </select>

    </p>



    
    
    <p><input type="text" placeholder="请输入搜索职位名" ID="positionName" style="width:88%"/> <a href="#" id="searchButton" onclick="doSearch()"><span class="glyphicon glyphicon-search" style="font-size:15px;;margin-left:4px;position:relative;top:4px"></span></a></p>
    
        <p style="line-height:22px">感谢您选择里德咨询作为职业生涯的伙伴。因为，除了客户，我们同样关心每一位候选人。</p>
<p style="line-height:22px">除了优秀的工作机会之外，您还可以获得：<br />
-人力资源的市场报告<br />-目标雇主分析<br />-职业发展规划<br />-薪资报酬建议<br />-面试技巧培训</p>

</div>
    <div class="col-md-9" >
    <div style="width:95%;margin:auto;color:Grey">职位列表
    <select name="sortBy" id="sortBy" style="float:right;width:120px;height:25px" onchange="onSort()">
    <option value="">排序方式..</option>
    <option value="asc">按薪水升序</option>
    <option value="desc">按薪水降序</option>
    </select>
    
    </div>
    <hr />

    <asp:DataGrid runat="server" ID="positionList" PagerStyle-PrevPageText="上一页" 
        PagerStyle-NextPageText="下一页" AllowPaging="true"  AutoGenerateColumns="false" 
        PageSize="20" style="width:95%;margin:auto;border:none" 
            onpageindexchanged="positionList_PageIndexChanged" 
            onitemdatabound="positionList_ItemDataBound">
   <HeaderStyle CssClass="jobitemHeader" ForeColor="Black"/>
    <Columns>
   <asp:BoundColumn HeaderText="地点" DataField="city" ItemStyle-CssClass="jobitemHeader"></asp:BoundColumn>
   <asp:BoundColumn HeaderText="公司" DataField="company" ItemStyle-CssClass="jobitemHeader"></asp:BoundColumn>
    <asp:HyperLinkColumn HeaderText="职位名称" DataTextField="titleText" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/job-detail.aspx?id={0}"></asp:HyperLinkColumn>
    <asp:BoundColumn HeaderText="薪水范围" DataField="salaryScope" ItemStyle-CssClass="jobitemHeader" ItemStyle-HorizontalAlign=Right HeaderStyle-HorizontalAlign=Right ></asp:BoundColumn>
   </Columns>
    </asp:DataGrid>
    
    
     
    


    </div>
</div>
      
</div>

<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>
