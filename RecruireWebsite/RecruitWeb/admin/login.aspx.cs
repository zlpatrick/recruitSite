using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] != null)
            {
                Response.Redirect("/admin/main.aspx");
            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string userid = this.loginName.Text.Trim();
            string pass = this.loginPass.Text.Trim();

            string sql = "select * from Users where userid='" + userid + "'";
            DataSet ds = DBUtil.executeQuery(sql);
            int count = ds.Tables[0].Rows.Count;
            if (count > 0)
            {
                string password = ds.Tables[0].Rows[0]["userpassword"].ToString();
                if (pass.Equals(password))
                {
                    Session["adminName"] = userid;
                    Response.Redirect("/admin/main.aspx");
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