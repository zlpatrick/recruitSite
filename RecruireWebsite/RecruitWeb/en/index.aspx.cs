using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb
{
    public partial class en_Default : System.Web.UI.Page
    {
        public DataSet insights;
        public DataSet positions;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadContent();
            }
        }

        private void loadContent()
        {
            string sql = "select top 10 * from Insights where languageText='中文' order by submitDateTime desc";
            insights = DBUtil.executeQuery(sql);

            sql = "select top 10 * from Positions where languageText='中文' order by submitDateTime desc";
            positions = DBUtil.executeQuery(sql);
        }
    }
}
