using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;

namespace RecruitWeb.en
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginid = Request["loginMemberID"].ToString().Trim();
            string loginpass = Request["loginPassWord"].ToString().Trim();
            string sql = "select * from Users where userid='" + loginid + "'";
            DataSet ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string pass = ds.Tables[0].Rows[0]["userpass"].ToString();
                if (pass.Equals(MD5(loginpass)))
                {
                    Session["loginID"] = loginid;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('Password is incorrect，please retry');location.href='index.aspx';</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('Member ID does not exist，please retry');location.href='index.aspx';</script>");
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
    }
}