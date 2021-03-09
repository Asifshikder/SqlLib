using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Sql.TEST.Models
{
    public class ScriptParameter
    {
        public string Parameter { get; set; }
        public string Value { get; set; }
        public string Command { get; set; }
        public string QueryScript { get; set; }
        public string ConnectionString { get; set; }
    }
}
