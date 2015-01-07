using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb.en
{
    public partial class user_resume : System.Web.UI.Page
    {
        public string resumeID = null;
        public string resumeLoc = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginID"] == null)
            {
                Response.Redirect("index.aspx");
            }


            string sql = "select * from Resumes where userid='" + Session["loginID"] + "'";
            DataSet ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                resumeID = ds.Tables[0].Rows[0]["ID"].ToString();
                resumeLoc = ds.Tables[0].Rows[0]["resumeLoc"].ToString();
            }

        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }

        protected void submitYourCV_Click(object sender, EventArgs e)
        {
            if (Session["loginID"] == null)
            {
                Response.Redirect("index.aspx");
            }
            string filename = this.yourCV.FileName;
            string userid = Session["loginID"].ToString();
            if (filename.Equals(""))
            {
                return;
            }
            string timestamp = DateTime.Now.Ticks.ToString();
            string serverFile = Server.MapPath("\\ResumeFiles\\" + timestamp + getExtention(filename));
            this.yourCV.SaveAs(serverFile);
            string sql = string.Format("insert into Resumes(resumeLoc,submitDateTime,userid) values('{0}','{1}','{2}')"
                , timestamp + getExtention(filename), DateTime.Now.ToString(), userid);
            DBUtil.executeNonQuery(sql);

            sql = "select * from Resumes where userid='" + Session["loginID"] + "'";
            DataSet ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                resumeID = ds.Tables[0].Rows[0]["ID"].ToString();
                resumeLoc = ds.Tables[0].Rows[0]["resumeLoc"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ResumeFiles/" + resumeLoc);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "delete from Resumes where ID=" + resumeID;
                DBUtil.executeNonQuery(sql);
                resumeID = null;
                resumeLoc = null;
            }
            catch (Exception ex)
            {
            }
        }
    }
}