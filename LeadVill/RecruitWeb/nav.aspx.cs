using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitWeb
{
    public partial class nav : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select interestArea from Users where userid='" + Session["loginID"] + "'";

            System.Data.DataSet ds = RecruitWeb.DBUtil.executeQuery(sql);
            string[] interestArea = ds.Tables[0].Rows[0]["interestArea"].ToString().Split(',') ;
            string result = "";
            foreach (string str in interestArea)
            {
                if(!str.Equals(""))
                {
                    result += "'" + str + "',";
                }
            }
            if (!result.Equals(""))
            {
                result = result.Substring(0, result.Length - 1);
            }
            sql = "select top 3 * from Positions where areaText in (" + result + ") order by submitDateTime desc";
            ds = RecruitWeb.DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string id = ds.Tables[0].Rows[i]["ID"].ToString();
                    string titleText = ds.Tables[0].Rows[i]["titleText"].ToString();
                }
            }
        }
    }
}