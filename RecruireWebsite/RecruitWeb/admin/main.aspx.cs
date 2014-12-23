using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace RecruitWeb.admin
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
            if (!IsPostBack)
            {
                loadResumeList();
            }
        }

        private void loadResumeList()
        {
            string sql = "select * from Resumes order by submitDateTime desc";
            DataSet ds = DBUtil.executeQuery(sql);
            this.resumeList.DataSource = ds;
            this.resumeList.DataBind();
        }

        protected void submitPosition_Click(object sender, EventArgs e)
        {
            string title = this.title.Text.Trim();
            string positionDetail = this.positionContent.Text;
            string sql = string.Format("insert into Positions(titleText,contentText,submitDateTime) values('{0}','{1}','{2}')", title, positionDetail, DateTime.Now.ToString());
            DBUtil.executeNonQuery(sql);
        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {   
            string contentText = this.contentText.Text;
            string area = this.area.SelectedValue;
            string language = this.language.SelectedValue;

            string sql = "select max(id) as maxid from Insights";
            DataSet ds = DBUtil.executeQuery(sql);
            int maxid = 1;
            if (ds.Tables[0].Rows.Count > 0)
            {
                maxid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            }

            string imgFile = maxid + getExtention(this.imgUpload.FileName);
            this.imgUpload.SaveAs(Server.MapPath("\\InsightFiles\\thumbnail\\" + maxid + getExtention(this.imgUpload.FileName)));

            string docFile = maxid + getExtention(this.docUpload.FileName);
            this.docUpload.SaveAs(Server.MapPath("\\InsightFiles\\document\\" + maxid + getExtention(this.docUpload.FileName)));

            sql = string.Format("insert into Insights(contentText,thumbnailText,documentLoc,areaText,languageText,submitDateTime) values('{0}','{1}','{2}','{3}','{4}','{5}')",
                contentText, imgFile, docFile, area, language, DateTime.Now.ToString());
            DBUtil.executeNonQuery(sql);
        }
    }
}