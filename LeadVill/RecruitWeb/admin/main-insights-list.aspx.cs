using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace RecruitWeb.admin
{
    public partial class main_insights_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
            if (!IsPostBack)
            {
                loadInsights();
            }
        }

        private void loadInsights()
        {
            string sql = "select * from Insights order by areaText desc,submitDateTime desc";
            DataSet ds = DBUtil.executeQuery(sql);
            this.insightsList.DataSource = ds;
            this.insightsList.DataBind();
        }

        protected void insightsList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            int index = e.NewPageIndex;
            this.insightsList.CurrentPageIndex = index;
            loadInsights();
        }

    }
}