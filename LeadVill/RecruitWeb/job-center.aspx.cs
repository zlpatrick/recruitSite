using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RecruitWeb
{
    public partial class job_center : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadPositions();
            }
        }

        private void loadPositions()
        {
            string sql = "select * from Positions where languageText is not null ";
            string searchKey = "";
            if (Request.QueryString["search"] != null)
            {
                searchKey = Request.QueryString["search"];
                sql = "select * from Positions where titleText like '%" + searchKey + "%'";
            }
            if (Request.QueryString["area"] != null)
            {
                string area = Request.QueryString["area"];
                if (!area.Equals(""))
                {
                    sql += "and areaText='" + area + "' ";
                }
            }
            if (Request.QueryString["depart"] != null)
            {
                string depart = Request.QueryString["depart"];
                if (!depart.Equals(""))
                {
                    sql += "and departmentText='" + depart + "' ";
                }
            }
            if (Request.QueryString["sort"] != null)
            {
                if(Request.QueryString["sort"].Equals("asc"))
                    sql +="order by salaryScope asc";
                else
                    sql +="order by salaryScope desc";
            }
            else
            {
                sql += "order by submitDateTime desc";
            }

            DataSet ds = DBUtil.executeQuery(sql);
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("city");
            dt.Columns.Add("company");
            dt.Columns.Add("titleText");
            dt.Columns.Add("salaryScope");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow row = dt.NewRow();
                string titleText = ds.Tables[0].Rows[i]["titleText"].ToString();
                string[] titleItems = titleText.Split('-');
                row[0] = ds.Tables[0].Rows[i]["ID"].ToString();
                if (titleItems.Length == 3)
                {
                    row[1] = titleItems[0];
                    row[2] = titleItems[1];
                    row[3] = titleItems[2];
                }
                else if (titleItems.Length > 3)
                {
                    row[1] = titleItems[0];
                    string titleStr = "";
                    for (int j = 1; j <= titleItems.Length - 2; j++)
                    {
                        titleStr += titleItems[j] + "-";
                    }
                    titleStr = titleStr.Substring(0, titleStr.Length - 1);
                    row[2] = titleStr;
                    row[3] = titleItems[titleItems.Length-1];
                }
                row[4] = ds.Tables[0].Rows[i]["salaryScope"].ToString();
                dt.Rows.Add(row);
            }

            this.positionList.DataSource = dt;
            this.positionList.DataBind();
        }

        private string getExtention(string file)
        {
            int index = file.LastIndexOf('.');
            return file.Substring(index);
        }

       

        protected void positionList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            int index = e.NewPageIndex;
            this.positionList.CurrentPageIndex = index;
            loadPositions();
        }

        protected void positionList_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            
            string i = e.Item.Cells[3].Text;
            e.Item.Cells[3].Text = getSalaryText(i);
        }

        private string getSalaryText(string salary)
        {
            if (salary.Equals("1"))
            {
                return "10-20万";
            }
            else if (salary.Equals("2"))
            {
                return "20-30万";
            }
            else if (salary.Equals("3"))
            {
                return "30-50万";
            }
            else if (salary.Equals("4"))
            {
                return "50-80万";
            }
            else if (salary.Equals("5"))
            {
                return "80-120万";
            }
            else if (salary.Equals("6"))
            {
                return "120万以上";
            }
            else
                return "薪水范围";
        }
    }
}