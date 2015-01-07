using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb
{
    public partial class user_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginID"] == null)
            {
                Response.Redirect("index.aspx");
            }

            if (!IsPostBack)
            {
                loadProfile();
            }
        }

        private void loadProfile()
        {
            string userid = Session["loginID"].ToString();
            string sql = "select * from Users where userid='" + userid + "'";
            DataSet ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                this.memberID.Text = userid;
                this.name.Text = ds.Tables[0].Rows[0]["username"].ToString();
                this.mobile.Text = ds.Tables[0].Rows[0]["mobilePhone"].ToString();
               
                this.currentCompany.Text = ds.Tables[0].Rows[0]["currentCompany"].ToString();
                this.currentPosition.Text = ds.Tables[0].Rows[0]["currentPosition"].ToString();
                this.dateOfBirth.Text = ds.Tables[0].Rows[0]["dateOfBirth"].ToString();
                this.location.SelectedValue = ds.Tables[0].Rows[0]["placeOfNow"].ToString();

                List<string> interestArea = ds.Tables[0].Rows[0]["interestArea"].ToString().Split(',').ToList();
                if (interestArea.Contains("金融服务"))
                {
                    this.financeCheckBox.Checked = true;
                }
                if (interestArea.Contains("生命科学"))
                {
                    this.lifeCheckBox.Checked = true;
                }
                if (interestArea.Contains("制造工业"))
                {
                    this.manufCheckBox.Checked = true;
                }
                if (interestArea.Contains("汽车及配件"))
                {
                    this.autoCheckBox.Checked = true;
                }
                if (interestArea.Contains("能源及化工"))
                {
                    this.powerCheckBox.Checked = true;
                }
                if (interestArea.Contains("酒店地产"))
                {
                    this.hotelCheckBox.Checked = true;
                }
            }
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            string name = this.name.Text.Trim();
            string mobile = this.mobile.Text.Trim();
            string currentCompany = this.currentCompany.Text.Trim();
            string currentPosition = this.currentPosition.Text.Trim();
            string dateOfBirth = this.dateOfBirth.Text.Trim();
            string placeOfNow = this.location.SelectedValue;
            string sex = "";

            string interestArea = "";
            if (this.financeCheckBox.Checked)
                interestArea += "金融服务,";
            if (this.autoCheckBox.Checked)
                interestArea += "汽车及配件,";
            if (this.lifeCheckBox.Checked)
                interestArea += "生命科学,";
            if (this.manufCheckBox.Checked)
                interestArea += "制造工业,";
            if (this.powerCheckBox.Checked)
                interestArea += "能源及化工,";
            if (this.hotelCheckBox.Checked)
                interestArea += "酒店地产,";

            string sql = string.Format("update Users set username='{0}',mobilePhone='{1}',sex='{2}'," +
                "placeOfNow='{3}',currentCompany='{4}',currentPosition='{5}',interestArea='{6}',dateOfBirth='{7}' where userid='{8}'",
                name, mobile, sex, placeOfNow, currentCompany, currentPosition, interestArea, dateOfBirth, Session["loginID"].ToString());
            DBUtil.executeNonQuery(sql);
        }
    }
    
}