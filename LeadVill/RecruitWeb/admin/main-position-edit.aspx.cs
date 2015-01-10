using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb.admin
{
    public partial class main_position_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
            if (!IsPostBack)
            {
                loadPositionInfo();
            }
        }

        private void loadPositionInfo()
        {
            string id = Request.QueryString["id"].ToString();
            string sql = "select * from Positions where ID=" + id;
            DataSet ds = DBUtil.executeQuery(sql);
            string title = ds.Tables[0].Rows[0]["titleText"].ToString();
            string detail = ds.Tables[0].Rows[0]["contentText"].ToString();
            string companyType = ds.Tables[0].Rows[0]["companyType"].ToString();
            string lang = ds.Tables[0].Rows[0]["languageText"].ToString();
            string area = ds.Tables[0].Rows[0]["areaText"].ToString();
            string departMent = ds.Tables[0].Rows[0]["departmentText"].ToString();
            string salary = ds.Tables[0].Rows[0]["salaryScope"].ToString();
            string requirement = ds.Tables[0].Rows[0]["requirementText"].ToString();

            this.title.Text = title;
            this.positionContent.Text = detail;
           
            this.language.SelectedValue = lang;
            this.area.SelectedValue = area;
            this.department.SelectedValue = departMent;
            this.positionRequirement.Text = requirement;
            if (!salary.Equals(""))
            {
                salaryScope.SelectedValue = salary;
            }
        }

        protected void submitPosition_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            string title = this.title.Text.Trim();
            string positionDetail = this.positionContent.Text;
            if (title.Equals("") || positionDetail.Equals(""))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>showError();</script>");
                return;
            }
            string companyType = "";
            string language = this.language.SelectedValue;
            string area = this.area.SelectedValue;
            string departments = this.department.SelectedValue;
            string salary = this.salaryScope.SelectedValue;
            string requirement = this.positionRequirement.Text;
            string sql = string.Format("update Positions set titleText='{0}',contentText='{1}',companyType='{2}',languageText='{3}',areaText='{4}',departmentText='{5}',salaryScope={6},requirementText='{7}' where ID={8}", title, positionDetail, companyType, language, area, departments,salary,requirement, id);
            DBUtil.executeNonQuery(sql);
            Response.Redirect("main-position-list.aspx");
        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }
    }
}