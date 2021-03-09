using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Text;

namespace SqlLib
{
    public class CommandContext : ICommandContext
    {
        public void CreateDatabase(string servername, string databasename)
        {
            
            SqlConnection tmpConn;
            string sqlCreateDBQuery;
            tmpConn = new SqlConnection();
            tmpConn.ConnectionString = "SERVER = " + servername + "; Trusted_Connection=True;";
            sqlCreateDBQuery = " CREATE DATABASE " + databasename;

            SqlCommand myCommand = new SqlCommand(sqlCreateDBQuery, tmpConn);
            try
            {
                tmpConn.Open();
                var result = myCommand.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }



        }

        public void ExecuteScripts(string conString, string script)
        {
            using (SqlConnection conn = new SqlConnection(conString))
            {
                conn.Open();

                var cmd = conn.CreateCommand();

                cmd.CommandText = script;
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    foreach (var e in ex.Errors)
                    {
                        Console.WriteLine(e.ToString());
                    }
                    throw;
                }

            }
        }

        public void ExecuteScriptsWithParameter(string parametername, string value, string command, string conString, string script)
        {
            using (SqlConnection conn = new SqlConnection(conString))
            {

                using (var cmd = new SqlCommand(command, conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter(parametername, value));
                    cmd.ExecuteNonQuery();
                }
            }
        }

        //public void ExecuteSqlFile(string conString, string filepath)
        //{
        //    //FileInfo file = new FileInfo(filepath);
        //    using()
        //    string script = file.OpenText().ReadToEnd();
        //    script = script.Replace("GO", "");

        //    SqlConnection tmpConn;
        //    tmpConn = new SqlConnection();
        //    tmpConn.ConnectionString = conString;
        //    tmpConn.Open();
        //    SqlCommand myCommandnew = new SqlCommand(script, tmpConn);
        //    var resultnew = myCommandnew.ExecuteNonQuery();   //Error comes here
        //    Console.WriteLine(resultnew);
        //    tmpConn.Close();
        //}
    }
}
