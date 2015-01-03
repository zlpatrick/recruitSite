using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;

namespace RecruitWeb.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] != null)
            {
                Response.Redirect("/admin/main-insights-add.aspx");
            }
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

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string userid = this.loginName.Text.Trim();
            string pass = MD5(this.loginPass.Text.Trim());

            string sql = "select * from Admins where userid='" + userid + "'";
            DataSet ds = DBUtil.executeQuery(sql);
            int count = ds.Tables[0].Rows.Count;
            if (count > 0)
            {
                string password = ds.Tables[0].Rows[0]["userpassword"].ToString();
                if (pass.Equals(password))
                {
                    Session["adminName"] = userid;
                    Response.Redirect("/admin/main-insights-add.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>showFailTip();</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>showFailTip();</script>");
            }
            
        }
    }
}