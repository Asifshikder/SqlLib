using System;

namespace SqlLib
{
    public interface ICommandContext
    {
        void ExecuteScripts(string conString, string script);
        void ExecuteScriptsWithParameter(string parametername, string value, string command,string conString, string script);
      
        void CreateDatabase(string servername, string dbname);
    }
}
