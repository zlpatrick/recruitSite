<style>
.home-banner
{
    list-style:none;
    padding:0
}   
.home-banner>li
{
    float:left;
    width:20%;
    
} 
    
.home-banner-column
{
    border-left:1px solid lightgrey;
    height:90px;
    padding-left:10px;
    color:grey;
}
    
.home-banner-column ul
{
    list-style:none;
    padding-left:5px;
}

.home-banner-column ul li
{
    height:20px;
    line-height:20px;
}

.home-banner-column-title
{
    color:#333;
    height:25px !important;
    line-height: 25px !important;
}

 .main-form
{
    width:300px;
    float:right; 
}

.main-form input
{  
    height:30px;
    font-size:12px;
    color:grey;
    padding-left:5px;
    width:260px;
}
    
.main-form a
{
    margin-left:10px;
    font-size:18px;
    color:grey;
} 
    
.main-form a span
{
    top:5px;
}

a
{
    color:#333;
}

a:hover
{
    color:grey;
    text-decoration:none;
}
</style>
<script>
    function doSearch() {
        var searchKeyWord = $("#positionName")[0].value;
        if ((searchKeyWord != null) && (searchKeyWord != "")) {
            location.href = "/job-center.aspx?search=" + searchKeyWord;
        }
    }
</script>
<div class="navbar navbar-default navbar-fixed-top"
	style="padding-top: 15px;margin-bottom:0px;padding-bottom:15px">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-target=".navbar-collapse"
				data-toggle="collapse" type="button">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/jp/index.aspx" title="Home" style="padding: 0"><img
				src="/img/logo.jpg" class="img-responsive" style="height:45px;margin-left:20px;"/></a>
		</div>
		<div class="navbar-collapse collapse">
			<!--<ul class="nav navbar-nav" style="margin-left:50px;margin-top:5px">
				<li><a href="index.aspx">首页</a></li>
				<li><a href="solution.aspx">解决方案</a></li>
				<li><a href="job-center.aspx">工作机会</a></li>
                <li><a href="job-list.aspx">职位列表</a></li>
				<li><a href="insights.aspx">行业视角</a></li>
                <li><a href="about-us.aspx">关于我们</a></li>
			</ul>-->
            <div class="main-form">
        <div>
        <input type="text" ID="positionName"/> <a href="#" id="searchButton" onclick="doSearch()"><span class="glyphicon glyphicon-search"></span></a></div>
        
        
    </div>
		</div>

	</div>
    <div class="navbar-collapse collapse">
    <div class="container" style="margin-top:10px">
        <ul class="home-banner" >
            <li class="home-banner-column">
                    <ul>
                        <li class="home-banner-column-title"><a href="/jp/solution.aspx">ソリューション</a></li>
                        <li>高端人才寻访</li>
                        <li>员工心理咨询</li>
                    </ul>


            </li>
            <li class="home-banner-column">
                    <ul>
                        <li class="home-banner-column-title"><a href="/jp/job-center.aspx">ジョブセンター</a></li>
                        <li>欧美公司职位</li>
                        <li>日本公司职位</li>
                        <li>中国公司职位</li>
                    </ul>
            </li>
            <li class="home-banner-column">
                
                        <ul>
                            <li class="home-banner-column-title"><a href="/jp/insights.aspx">業界視点</a></li>
                            <li>人事法规</li>
                            <li>职业规划</li>
                            <li>猎头知识</li>
                        </ul>
            </li>
            <li class="home-banner-column">
                        <ul>
                            <li class="home-banner-column-title"><a href="/jp/about-us.aspx">关于我们</a></li>
                            <li>联系我们</li>
                        </ul>           
            </li>
            <li class="home-banner-column">
                        <ul>
                            <li class="home-banner-column-title">网站语言</li>
                            <li><a href="/index.aspx">中文</a></li>
                            <li><a href="/en/index.aspx">英文</a></li>
                            <li><a href="/jp/index.aspx">日文</a></li>
                        </ul>           
            </li>
        </ul>
    </div>
    </div>
</div>
<div style="height:180px">&nbsp;</div>