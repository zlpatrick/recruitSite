using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace RecruitWeb.admin
{
    public partial class main_resume_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
            if (!IsPostBack)
            {
                loadResumeList();
            }
        }

        private void loadResumeList()
        {
            string sql = "select * from Resumes order by submitDateTime desc";
            DataSet ds = DBUtil.executeQuery(sql);
            this.resumeList.DataSource = ds;
            this.resumeList.DataBind();
        }

        protected void resumeList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            int index = e.NewPageIndex;
            this.resumeList.CurrentPageIndex = index;
            loadResumeList();
        }

    }
}