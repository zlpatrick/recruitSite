using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb
{
    public partial class job_detail : System.Web.UI.Page
    {
        public string jobTitle;
        public string jobContent;
        protected void Page_Load(object sender, EventArgs e)
        {
            loadJob();
        }

        private void loadJob()
        {
            string id = Request.QueryString["id"];
            string sql = "select * from Positions where ID=" + id;
            DataSet ds = DBUtil.executeQuery(sql);
            jobTitle = ds.Tables[0].Rows[0]["titleText"].ToString();
            jobContent = ds.Tables[0].Rows[0]["contentText"].ToString();
        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }

        protected void applyPosition_Click(object sender, EventArgs e)
        {
            if (Session["loginID"] == null)
            {
            }
            else
            {
                string userid = Session["loginID"].ToString();
                string positionId = Request.QueryString["id"];
                string sql = "select * from UserApplication where userid='"+userid+"' and positionId="+positionId;
                if(DBUtil.executeQuery(sql).Tables[0].Rows.Count>0)
                {
                }
                else
                {
                sql = string.Format("insert into UserApplication(userid,positionId,applyDateTime) values('{0}','{1}','{2}')",
                    userid, positionId, DateTime.Now.ToString());
                DBUtil.executeNonQuery(sql);
                }
                ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('申请成功');</script>");
            }

        }
    }
}