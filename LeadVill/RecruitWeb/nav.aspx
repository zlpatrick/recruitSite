﻿<style>
.home-banner
{
    list-style:none;
    padding:0
}   
.home-banner>li
{
    float:left;
    width:33.3%;
    
} 
    
.home-banner-column
{
    border-left:1px solid lightgrey;
  
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
    color:black;
}

a:hover
{
    color:darkblue;
    text-decoration:none;
}

.list-group-item
{
    border:none;
}

a.list-group-item:hover,a.list-group-item:active
{
    background-color:White;
}

.list-group-item.active,.list-group-item.active
{
    background-color:White;
    color:darkblue;
}

a.list-group-item.active:hover,a.list-group-item.active:active
{
    background-color:White;
    color:darkblue;
}
</style>
<script>
    function doSearch() {
        var searchKeyWord = $("#positionName")[0].value;
        var area = $("#positionArea")[0].value;
        var department = $("#positionDepartment")[0].value;
        location.href = "/job-center.aspx?search=" + searchKeyWord +"&area="+area+"&depart="+department;
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
			<a class="navbar-brand" href="/index.aspx" title="Home" style="padding: 0"><img
				src="/img/logo.png" class="img-responsive" style="height:70px;margin-left:10px;"/></a>
		</div>
		<div class="navbar-collapse collapse">
			<div style="float:right;position:relative;padding-right:10px;margin-top:15px;color:grey"><form method="post" action="login.aspx">
            
            <% if(Session["loginID"]==null) {
                      %>
<input placeholder="您的会员ID" type="text" id="loginMemberID" style="margin-left:15px;border:1px solid #ddd"  name="loginMemberID"><input placeholder="您的密码"  style="margin-left:5px;border:1px solid #ddd" type="password" id="loginPassWord" name="loginPassWord"/><input style="border: none;height: 25px;line-height: 25px;padding-left: 5px;padding-right: 5px;border:none; color:grey;background-color:white" id="Submit1" type="submit" value="登录"/>&nbsp;|&nbsp;&nbsp;<a href="register.aspx" style="color:Grey">注册</a>
            <%}
            else
                      {%>
                      欢迎您：<%=Session["loginID"] %>  &nbsp;&nbsp;<a href="user-profile.aspx" style="margin-right:5px">个人档案</a><a href="logout.aspx">注销</a>
                     <%} %>

                     <a href="/index.aspx" style="margin-left:20px">中文</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/en/index.aspx">English</a>
                     </form>
               </div>
               
       
             
       </div>
        
        
    </div>
		
    <div class="navbar-collapse collapse">
        <div class="container" style="margin-top:10px">
        <ul class="home-banner" >
            
            <li class="home-banner-column">
                    <ul>
                        <li class="home-banner-column-title"><a href="/job-center.aspx">工作机会</a></li>
                       
                    </ul>
            </li>
            <li class="home-banner-column">
                    <ul>
                        <li class="home-banner-column-title"><a href="/solution.aspx">解决方案</a></li>
                   
                    </ul>
            </li>
            <li class="home-banner-column">
                        <ul>
                            <li class="home-banner-column-title"><a href="/about-us.aspx">关于我们</a></li>
                     
                        </ul>           
            </li>
          
        </ul>
     </div>
    </div>
</div>
<div style="height:110px">&nbsp;</div>
