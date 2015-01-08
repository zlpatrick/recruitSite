using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitWeb
{
    public partial class en_job_center : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadPositions();
            }
        }

        private void loadPositions()
        {
            string sql = "select * from Positions where languageText='英文' ";
            string searchKey = "";
            if (Request.QueryString["search"] != null)
            {
                searchKey = Request.QueryString["search"];
                sql = "select * from Positions where titleText like '%" + searchKey + "%' and languageText='英文' ";
            }
            if (Request.QueryString["area"] != null)
            {
                string area = Request.QueryString["area"];
                if (!area.Equals(""))
                {
                    sql += "and areaText='" + area + "' ";
                }
            }
            if (Request.QueryString["depart"] != null)
            {
                string depart = Request.QueryString["depart"];
                if (!depart.Equals(""))
                {
                    sql += "and departmentText='" + depart + "' ";
                }
            }

            sql += "order by submitDateTime desc";
            this.positionList.DataSource = DBUtil.executeQuery(sql);
            this.positionList.DataBind();
        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }

        

        protected void positionList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            int index = e.NewPageIndex;
            this.positionList.CurrentPageIndex = index;
            loadPositions();
        }
    }
}