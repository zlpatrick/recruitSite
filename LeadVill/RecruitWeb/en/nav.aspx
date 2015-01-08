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
</style>
<script>
    function doSearch() {
        var searchKeyWord = $("#positionName")[0].value;
        if ((searchKeyWord != null) && (searchKeyWord != "")) {
            location.href = "/en/job-center.aspx?search=" + searchKeyWord;
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
			<a class="navbar-brand" href="/en/index.aspx" title="Home" style="padding: 0"><img
				src="/img/logo.png" class="img-responsive" style="height:70px;margin-left:10px;"/></a>
		</div>
		<div class="navbar-collapse collapse">
			<div style="float:right;position:relative;padding-right:10px;margin-top:15px;color:grey"><form method="post" action="login.aspx">
           
            <% 
            if(Session["loginID"]==null) 
            {
                      %>
<input placeholder="Your Member ID" type="text" id="loginMemberID" style="margin-left:15px;border:1px solid #ddd"  name="loginMemberID"><input placeholder="Your Password"  style="margin-left:5px;border:1px solid #ddd" type="password" id="loginPassWord" name="loginPassWord"/><input style="border: none;height: 25px;line-height: 25px;padding-left: 5px;padding-right: 5px;border:none; color:grey;background-color:white" id="Submit1" type="submit" value="Sign In"/>&nbsp;|&nbsp;&nbsp;<a href="register.aspx" style="color:Grey">Sign Up</a>
            <%
            }
            else
                {%>
                 Welcome: <%=Session["loginID"] %> <a href="user-profile.aspx" style="margin-right:5px;margin-left:10px">Profile</a><a href="logout.aspx">Log out</a>
                 <% }%>   <a href="/index.aspx" style="margin-left:20px">Chinese</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/en/index.aspx">English</a>
                 </form>
               </div>
           
		</div>

	</div>
    <div class="navbar-collapse collapse">
    <div class="container" style="margin-top:10px">
        <ul class="home-banner" >
            
            <li class="home-banner-column">
                    <ul>
                        <li class="home-banner-column-title"><a href="/en/job-center.aspx">JOB CENTER</a></li>
                   
                    </ul>
            </li>
            <li class="home-banner-column">
                    <ul>
                        <li class="home-banner-column-title"><a href="/en/solution.aspx">SOLUTION</a></li>
                   
                    </ul>
            </li>
            <li class="home-banner-column">
                        <ul>
                            <li class="home-banner-column-title"><a href="/en/about-us.aspx">ABOUT US</a></li>
                        </ul>           
            </li>

        </ul>
    </div>
    </div>
</div>
<div style="height:110px">&nbsp;</div>