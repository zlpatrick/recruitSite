using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb
{
    public partial class insights_area : System.Web.UI.Page
    {
        public DataSet ds; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadInsightsList();
            }
        }

        private void loadInsightsList()
        {
            string area = Request.QueryString["area"].ToString();
            string areaText = "";
            if (area.Equals("finance"))
                areaText = "金融服务";
            else if (area.Equals("life"))
                areaText = "生命科学";
            else if (area.Equals("power"))
                areaText = "能源及化工";
            else if (area.Equals("manuf"))
                areaText = "制造工业";
            else if (area.Equals("auto"))
                areaText = "汽车及配件";
            else if (area.Equals("hotel"))
                areaText = "酒店地产";
            else if (area.Equals("it"))
                areaText = "互联网及咨询";
            else if (area.Equals("food"))
                areaText = "消费品及餐饮";

            string sql = "select * from Insights where areaText='" + areaText + "' and languageText='中文' order by submitDateTime desc";
            ds = DBUtil.executeQuery(sql);
        }
    }
}