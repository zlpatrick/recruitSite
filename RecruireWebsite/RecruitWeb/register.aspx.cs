using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace RecruitWeb
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regButton_Click(object sender, EventArgs e)
        {
            string userid = this.memberID.Text.Trim();
            string ps = this.ps.Text.Trim();
            string username = this.name.Text.Trim();
            string mobilePhone = this.mobile.Text.Trim();
            string currentCompany = this.currentCompany.Text.Trim();
            string placeOfNow = this.location.SelectedValue;
            string currentPosition = this.currentPosition.Text.Trim();
            string sex = this.sex.SelectedValue;
            string dateOfBirth = this.dateOfBirth.Text.Trim();
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

            string sql = string.Format("insert into Users(userid,userpass,username,mobilePhone,sex,placeOfNow,currentCompany,currentPosition,interestArea,regDateTime,dateOfBirth) values('{0}'"+
                ",'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')", userid, MD5(ps), username, mobilePhone, sex, placeOfNow, currentCompany, currentPosition, interestArea, DateTime.Now.ToString(),dateOfBirth);
            DBUtil.executeNonQuery(sql);
            ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>successReg();</script>");
        }

        public static string MD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] result = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(str));
            string str2 = "";
            for (int i = 0; i < result.Length; i++)
            {
                str2 += string.Format("{0:x}", result[i]);
            }
            return str2;
        }
    }
}