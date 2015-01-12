using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitWeb.admin
{
    public partial class main_position_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
        }

        protected void submitPosition_Click(object sender, EventArgs e)
        {
            
            string title = this.jobPlace.Text.Trim() +" - "+ this.companydesc.Text.Trim()+" - "+ this.title.Text.Trim();
            string positionDetail = this.positionContent.Text;
            string areaText = this.area.SelectedValue;
            if (title.Equals("") || positionDetail.Equals(""))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>showError();</script>");
                return;
            }
            string salary = this.salaryScope.SelectedValue;
            string depart = this.department.SelectedValue;
            string companyType = "";
            string language = this.language.SelectedValue;
            string requirement = this.positionRequirement.Text;
            string sql = string.Format("insert into Positions(titleText,contentText,submitDateTime,companyType,languageText,areaText,departmentText,salaryScope,requirementText) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}',{7},'{8}')", title, positionDetail, DateTime.Now.ToString(), companyType, language, areaText, depart,salary,requirement);
            DBUtil.executeNonQuery(sql);
            Response.Redirect("/admin/main-position-list.aspx");
        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }
    }
}