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
    public partial class user_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginID"] == null)
            {
                Response.Redirect("index.aspx");
            }

        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            string oldPS = this.originalPS.Text.Trim();
            string newPS = this.newPS.Text.Trim();
            string newPSRe = this.newPSRe.Text.Trim();
            if (Session["loginID"] == null)
            {
                Response.Redirect("index.aspx");
            }
            string userid = Session["loginID"].ToString();
            string sql = "select * from Users where userid='" + userid + "'";
            DataSet ds = DBUtil.executeQuery(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string passInDb = ds.Tables[0].Rows[0]["userpass"].ToString();
                if (passInDb.Equals(MD5(oldPS)))
                {
                    sql = "update Users set userpass='" + MD5(newPS) + "' where userid='" + userid + "'";
                    DBUtil.executeNonQuery(sql);
                    ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>successEdit();</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>failEdit();</script>");
                }
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