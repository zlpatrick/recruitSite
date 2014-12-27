using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb
{
    public partial class en_job_detail : System.Web.UI.Page
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

        protected void submitYourCV_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string name = this.yourName.Text.Trim();
            string email = this.yourEmail.Text.Trim();
            string filename = this.yourCV.FileName;
            string timestamp = DateTime.Now.Ticks.ToString();
            string serverFile = Server.MapPath("\\ResumeFiles\\" + timestamp + getExtention(filename));
            this.yourCV.SaveAs(serverFile);
            string sql = string.Format("insert into Resumes(positionId,resumeLoc,username,useremail,submitDateTime) values({0},'{1}','{2}','{3}','{4}')"
                , id, timestamp + getExtention(filename), name, email, DateTime.Now.ToString());
            DBUtil.executeNonQuery(sql);
        }
    }
}