using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace RecruitWeb
{
    public class DBUtil
    {
        static string connStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\\data.mdb";

        public static DataSet executeQuery(string sql)
        {
            DataSet ds = new DataSet();
            OleDbConnection conn = new OleDbConnection(connStr);
            conn.Open();
            try
            {
                OleDbDataAdapter ada = new OleDbDataAdapter(sql, conn);
                ada.Fill(ds);
            }
            finally
            {
                conn.Close();
            }
            return ds;
        }

        public static void executeNonQuery(string sql)
        {
            OleDbConnection conn = new OleDbConnection(connStr);
            conn.Open();
            try
            {
                OleDbCommand command = new OleDbCommand(sql, conn);
                command.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }
        }

    }
}