using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb.admin
{
    public partial class resume_download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminName"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }

            string id = Request.QueryString["id"];
            string sql = "select resumeLoc,username from Resumes where ID=" + id;
            DataSet ds = DBUtil.executeQuery(sql);
            string loc = ds.Tables[0].Rows[0][0].ToString();
            string name = ds.Tables[0].Rows[0][1].ToString();
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.AppendHeader("Content-Disposition","attachment;filename=CV-"+name+getExtention(loc)); 
            Response.ContentType="application/unknown";
            Response.WriteFile(Server.MapPath("\\ResumeFiles\\"+loc)); 
            Response.Flush();
            Response.Close();
        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }
    }
}