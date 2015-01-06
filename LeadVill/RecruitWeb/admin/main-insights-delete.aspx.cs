using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitWeb.admin
{
    public partial class main_insights_delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["adminName"]==null)
            {
                Response.Redirect("/admin/login.aspx");
            }
            string id = Request.QueryString["id"].ToString();
            string sql = "delete from insights where ID=" + id;
            DBUtil.executeNonQuery(sql);
            Response.Redirect("main-insights-list.aspx");
        }
    }
}