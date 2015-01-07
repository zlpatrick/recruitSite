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
            string companyType = "";
            if (Request.QueryString["type"] != null)
            {
                string type = Request.QueryString["type"];
                if (type.Equals("zh"))
                    companyType = "中国公司";
                else if (type.Equals("jp"))
                    companyType = "日本公司";
                else if (type.Equals("en"))
                    companyType = "欧美公司";
            }
            string sql = "select * from Positions where languageText='英文' order by submitDateTime desc";
            if (!companyType.Equals(""))
            {
                sql = "select * from Positions where companyType='" + companyType + "' and languageText='英文' order by submitDateTime desc";
            }

            string searchKey = "";
            if (Request.QueryString["search"] != null)
            {
                searchKey = Request.QueryString["search"];
                sql = "select * from Positions where titleText like '%" + searchKey + "%' and languageText='英文' order by submitDateTime desc";
            }
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