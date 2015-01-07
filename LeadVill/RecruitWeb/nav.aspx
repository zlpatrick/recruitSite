<style>
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

#loginMenu
{
    display:none;
    position:absolute;
    right:0;
    
    border:1px solid #f1f1f1;
    padding:5px;
    background-color:white;
    width:300px;
    
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
			<a class="navbar-brand" href="/index.aspx" title="Home" style="padding: 0"><img
				src="/img/logo.jpg" class="img-responsive" style="height:45px;margin-left:20px;"/></a>
		</div>
		<div class="navbar-collapse collapse">
			<div style="float:right;position:relative;padding-right:10px;margin-top:15px" onmouseover="$('#loginMenu').css('display','block')" onmouseout="$('#loginMenu').css('display','none')"><span style="cursor:pointer;color:Grey"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;个人中心</span>
            <div id="loginMenu">
               <div style="background-color:#fafafa;padding:20px;color:grey">
               <% if(Session["loginID"]==null) {
                      %>
               <form action="/login.aspx" method="post">
                  <p>欢迎您登录系统</p>
                  <p><input placeholder="请输入您的会员ID" type="text" id="loginMemberID" style="width:100%" name="loginMemberID"></p>
                  <p><input placeholder="请输入您的密码" type="password" id="loginPassWord" style="width:100%" name="loginPassWord"/></p>
                  <p><a href="register.aspx" style="float:left">创建账号</a><input style="border: none;float:right;height: 25px;line-height: 25px;padding-left: 20px;padding-right: 20px; color:White;background-color:grey" id="loginNavButton" type="submit" value="登录"/></p> 
                  <p>&nbsp;</p> 
                  </form>
                  <%}
                  else
                      {%>
                      <p>欢迎您：<%=Session["loginID"] %>  &nbsp;&nbsp;<a href="logout.aspx">注销登录</a></p>
                      <hr />
                      <p><a href="user-profile.aspx">个人档案</a></p>
                      <p><a href="user-password.aspx">修改密码</a></p>
                      <p><a href="user-application.aspx">已申请职位</a></p>
                      <p><a href="user-resume.aspx">简历管理</a></p>

                      <p>&nbsp;</p>
                      <p>推荐职位</p>
                      <hr />
                      <%
                          string sql = "select interestArea from Users where userid='" + Session["loginID"] + "'";

            System.Data.DataSet ds = RecruitWeb.DBUtil.executeQuery(sql);
            string[] interestArea = ds.Tables[0].Rows[0]["interestArea"].ToString().Split(',') ;
            string result = "";
            foreach (string str in interestArea)
            {
                if(!str.Equals(""))
                {
                    result += "'" + str + "',";
                }
            }
            if (!result.Equals(""))
            {
                result = result.Substring(0, result.Length - 1);
            }
            sql = "select top 5 * from Positions where languageText='中文' and areaText in (" + result + ") order by submitDateTime desc";
            ds = RecruitWeb.DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string id = ds.Tables[0].Rows[i]["ID"].ToString();
                    string titleText = ds.Tables[0].Rows[i]["titleText"].ToString();
                                          %>
                                          
                                          <p><a href="/job-detail.aspx?id=<%=id %>"><%= titleText%></a></p>
                                          <%
                }
            }
                          

                          
                           
                         
                          
                      
                      
                      } %>
               </div>
               
            </div>
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
<div style="height:120px">&nbsp;</div>
