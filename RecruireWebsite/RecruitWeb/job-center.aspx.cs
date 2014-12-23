using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitWeb
{
    public partial class job_center : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }

        protected void submitYourCV_Click(object sender, EventArgs e)
        {
            string name = this.yourName.Text.Trim();
            string email = this.yourEmail.Text.Trim();
            string filename = this.yourCV.FileName;
            string timestamp = DateTime.Now.Ticks.ToString();
            string serverFile = Server.MapPath("\\ResumeFiles\\" + timestamp + getExtention(filename));
            this.yourCV.SaveAs(serverFile);
            string sql = string.Format("insert into Resumes(positionId,resumeLoc,username,useremail,submitDateTime) values({0},'{1}','{2}','{3}','{4}')"
                , -1, timestamp + getExtention(filename), name, email, DateTime.Now.ToString());
            DBUtil.executeNonQuery(sql);
        }
    }
}