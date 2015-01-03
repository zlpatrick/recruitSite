using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb.admin
{
    public partial class main_user_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }

            if (!IsPostBack)
            {
                LoadUsers();
            }
        }

        private void LoadUsers()
        {
            string sql = "select * from Users order by regDateTime desc";
            DataSet ds = DBUtil.executeQuery(sql);
            this.userList.DataSource = ds;
            this.userList.DataBind();
        }

        protected void userList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            int index = e.NewPageIndex;
            this.userList.CurrentPageIndex = index;
            LoadUsers();
        }
    }
}