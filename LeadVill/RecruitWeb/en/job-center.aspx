<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-center.aspx.cs" Inherits="RecruitWeb.en_job_center" %>

<html>
<head>
    <title>
    Job Center | Leadvill
    </title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <!-- #include file="/common.aspx" -->
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
        display:none;
       
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
        width:88%;
        height:30px;
        color:darkgrey;
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
                if (address.indexOf("sort=asc") >= 0) {
                    address = address.replace("sort=asc", "");
                }
                if (address.indexOf("sort=desc") >= 0) {
                    address = address.replace("sort=desc", "");
                }

                if ((address.indexOf("search") == -1) && (address.indexOf("area") == -1) && (address.indexOf("depart") == -1)) {
                    location.href = address + sort;
                }
                else {

                    location.href = address + "&" + sort;
                }

            }
        }
    </script>
</head>

<body>
<form runat="server">
<!-- #include file="nav.aspx"-->
<div class="container">
       <ul class="breadcrumb" style="background-color: white">
			    <li><a href="index.aspx">Home Page</a><span class="divider"></span></li>
			    <li class="active">Job Center</li>
		    </ul>
    <div class="row">
    <div class="col-md-3 leftText">

    <p><select id="positionArea">
    <option value="">Industry...</option>
    <option value="finance">Financial Services</option>
    <option value="manuf">Manufacturing Industry</option>
    <option value="power">Energy & Chemical</option>
    <option value="auto">Auto & Components</option>
    <option value="life">Life Science</option>
    <option value="hotel">Hotel & Real Estate</option>
    </select>
    </p>
    <p>
    <select id="positionDepartment">
    <option value="">Function...</option>
    <option value="sales">Sales / Marketing</option>
    <option value="rd">R&D / Technical</option>
    <option value="supply">Operation / Supply Chain</option>
    <option value="legal">Finance / Legal</option>
    <option value="it">IT</option>
    <option value="hr">HR</option>
    </select>

    </p>



    
    



      <p><input type="text" placeholder="please input to search" ID="positionName" style="width:88%"/> <a href="#" id="searchButton" onclick="doSearch()"><span class="glyphicon glyphicon-search" style="font-size:15px;;margin-left:4px;position:relative;top:4px"></span></a></p>
    <p style="line-height:22px">Thanks for choosing LEADVILL to be the associates on your career path, because we care about every candidates as well as our clients.</p>
<p style="line-height:22px">Besides excellent job opportunities, as a candidate, you can also acquire: <br />
-HR market survey<br />-target employer analysis<br />-career development planning<br />-remuneration proposal<br />-interview skills training</p>

</div>

        
    <div class="col-md-9" style="border-left:1px solid lightgrey">
    <div style="width:95%;margin:auto;color:Grey">All Openings
    <select name="sortBy" id="sortBy" style="float:right;width:120px;height:25px" onchange="onSort()">
    <option value="">Sort By..</option>
    <option value="asc">By Salary Ascending</option>
    <option value="desc">By Salary Descending</option>
    </select>
    
    
    </div>
    <hr />

    <asp:DataGrid runat="server" ID="positionList" PagerStyle-PrevPageText="Previous Page" 
        PagerStyle-NextPageText="Next Page" AllowPaging="true"  AutoGenerateColumns="false" 
        PageSize="20" style="width:95%;margin:auto;border:none" 
            onpageindexchanged="positionList_PageIndexChanged">
   <HeaderStyle CssClass="jobitemHeader" />
    <Columns>
   
    <asp:HyperLinkColumn HeaderText="职位列表" DataTextField="titleText" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/en/job-detail.aspx?id={0}"></asp:HyperLinkColumn>
   
   </Columns>
    </asp:DataGrid>
    
    
     
    


    </div>
</div>
      
</div>

<!-- #include file="bottom.aspx"-->
</form>
</body>
</html>
