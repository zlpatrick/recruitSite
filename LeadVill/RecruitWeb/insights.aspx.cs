using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb
{
    public partial class insights : System.Web.UI.Page
    {
        public string financeImg;
        public string financeTitle;
        public string financeContent;

        public string lifeImg;
        public string lifeTitle;
        public string lifeContent;

        public string manufImg;
        public string manufTitle;
        public string manufContent;

        public string hotelImg;
        public string hotelTitle;
        public string hotelContent;

        public string powerImg;
        public string powerTitle;
        public string powerContent;

        public string autoImg;
        public string autoTitle;
        public string autoContent;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadInfo();
            }
        }

        private void loadInfo()
        {
            string sql = "select top 1 titleText,contentText,thumbnailText from Insights where languageText='中文' and areaText='金融服务' order by submitDateTime desc";
            DataSet ds = DBUtil.executeQuery(sql);
            if( ds.Tables[0].Rows.Count>0)
            {
                financeImg = "/InsightFiles/thumbnail/"+ds.Tables[0].Rows[0][2].ToString();
                financeTitle = ds.Tables[0].Rows[0][0].ToString();
                financeContent = ds.Tables[0].Rows[0][1].ToString();
            }

            sql = "select top 1 titleText,contentText,thumbnailText from Insights where languageText='中文' and areaText='生命科学' order by submitDateTime desc";
            ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lifeImg = "/InsightFiles/thumbnail/" + ds.Tables[0].Rows[0][2].ToString();
                lifeTitle = ds.Tables[0].Rows[0][0].ToString();
                lifeContent = ds.Tables[0].Rows[0][1].ToString();
            }

            sql = "select top 1 titleText,contentText,thumbnailText from Insights where languageText='中文' and areaText='制造工业' order by submitDateTime desc";
            ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                manufImg = "/InsightFiles/thumbnail/" + ds.Tables[0].Rows[0][2].ToString();
                manufTitle = ds.Tables[0].Rows[0][0].ToString();
                manufContent = ds.Tables[0].Rows[0][1].ToString();
            }

            sql = "select top 1 titleText,contentText,thumbnailText from Insights where languageText='中文' and areaText='酒店地产' order by submitDateTime desc";
            ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                hotelImg = "/InsightFiles/thumbnail/" + ds.Tables[0].Rows[0][2].ToString();
                hotelTitle = ds.Tables[0].Rows[0][0].ToString();
                hotelContent = ds.Tables[0].Rows[0][1].ToString();
            }

            sql = "select top 1 titleText,contentText,thumbnailText from Insights where languageText='中文' and areaText='能源及化工' order by submitDateTime desc";
            ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                powerImg = "/InsightFiles/thumbnail/" + ds.Tables[0].Rows[0][2].ToString();
                powerTitle = ds.Tables[0].Rows[0][0].ToString();
                powerContent = ds.Tables[0].Rows[0][1].ToString();
            }

            sql = "select top 1 titleText,contentText,thumbnailText from Insights where languageText='中文' and areaText='汽车及配件' order by submitDateTime desc";
            ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                autoImg = "/InsightFiles/thumbnail/" + ds.Tables[0].Rows[0][2].ToString();
                autoTitle = ds.Tables[0].Rows[0][0].ToString();
                autoContent = ds.Tables[0].Rows[0][1].ToString();
            }
        }
    }
}