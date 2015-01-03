using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb
{
    public partial class user_application : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginID"] == null)
            {
            }
            if (!IsPostBack)
            {
                loadApplyList();
            }
        }

        private void loadApplyList()
        {
            string sql = "select UserApplication.ID,UserApplication.positionId,titleText,applyDateTime from UserApplication inner join Positions on UserApplication.positionId=Positions.ID where UserApplication.userid='" + Session["loginID"] + "'";
            DataSet ds = DBUtil.executeQuery(sql);
            this.applyList.DataSource = ds;
            this.applyList.DataBind();
        }

        protected void applyList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            int index = e.NewPageIndex;
            this.applyList.CurrentPageIndex = index;
            loadApplyList();
        }
    }
}