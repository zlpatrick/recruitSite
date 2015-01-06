using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb.admin
{
    public partial class main_position_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
            if (!IsPostBack)
            {
                loadPositions();
            }
        }

        private void loadPositions()
        {
            string sql = "select * from Positions order by submitDateTime desc";
            DataSet ds = DBUtil.executeQuery(sql);
            this.positionList.DataSource = ds;
            this.positionList.DataBind();
        }

        protected void positionList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            int index = e.NewPageIndex;
            this.positionList.CurrentPageIndex = index;
            loadPositions();
        }
    }
}