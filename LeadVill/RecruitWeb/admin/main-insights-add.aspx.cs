using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb.admin
{
    public partial class main_insights_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string titleText = this.titleText.Text.Trim();
            string contentText = this.contentText.Text.Trim();
            string area = this.area.SelectedValue;
            string language = this.language.SelectedValue;

            if (titleText.Equals("") || contentText.Equals(""))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>showError();</script>");
                return;
            }
            if (this.docUpload.FileName.Equals(""))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>showError();</script>");
                return;
            }
            string sql = "select top 1 id as maxid from Insights order by id desc";
            DataSet ds = DBUtil.executeQuery(sql);
            int maxid = 1;
            if (ds.Tables[0].Rows.Count > 0)
            {
                maxid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                maxid++;
            }

            string docFile = maxid + getExtention(this.docUpload.FileName);
            this.docUpload.SaveAs(Server.MapPath("\\InsightFiles\\document\\" + maxid + getExtention(this.docUpload.FileName)));

            sql = string.Format("insert into Insights(titleText,contentText,documentLoc,areaText,languageText,submitDateTime) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                titleText,contentText, docFile, area, language, DateTime.Now.ToString());
            DBUtil.executeNonQuery(sql);
            Response.Redirect("main-insights-list.aspx");
        }
    }
}