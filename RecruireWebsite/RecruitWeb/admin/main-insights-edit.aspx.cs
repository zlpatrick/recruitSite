using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace RecruitWeb.admin
{
    public partial class main_insights_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
            if (!IsPostBack)
            {
                loadInsight();
            }
        }
        private void loadInsight()
        {
            string id = Request.QueryString["id"].ToString();
            string sql = "select * from insights where ID=" + id;
            DataSet ds = DBUtil.executeQuery(sql);
            string title = ds.Tables[0].Rows[0]["titleText"].ToString();
            this.titleText.Text = title;
            string content = ds.Tables[0].Rows[0]["contentText"].ToString();
            this.contentText.Text = content;
            string area = ds.Tables[0].Rows[0]["areaText"].ToString();
            this.area.SelectedValue = area;
            string lang = ds.Tables[0].Rows[0]["languageText"].ToString();
            this.language.SelectedValue = lang;

        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string titleText = this.titleText.Text;
            string contentText = this.contentText.Text;
            if (titleText.Equals("") || contentText.Equals(""))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>showError();</script>");
                return;
            }

            string area = this.area.SelectedValue;
            string language = this.language.SelectedValue;

            string sql = string.Format("update Insights set titleText='{0}',contentText='{1}',areaText='{2}',languageText='{3}' where ID={4}",titleText,contentText,area,language,id);
            DBUtil.executeNonQuery(sql);
          
            Response.Redirect("main-insights-list.aspx");
        }
    }
}