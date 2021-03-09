using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Sql.TEST.Models;
using SqlLib;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Sql.TEST.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ICommandContext commandContext;
        private readonly IWebHostEnvironment webHost;

        public HomeController(ILogger<HomeController> logger,ICommandContext commandContext, IWebHostEnvironment webHost)
        {
            _logger = logger;
            this.commandContext = commandContext;
            this.webHost = webHost;
        }
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult IndexPost(ScriptModel model)
        {
            commandContext.ExecuteScripts(model.Constring, model.Query);
            return RedirectToAction(nameof(Index));
        }
        
        [HttpGet]
        public IActionResult CreateDatebase()
        {
            return View();
        }
        [HttpPost]
        public IActionResult CreateDatabasePost(NewDbModel model)
        {
            commandContext.CreateDatabase(model.ServerName, model.DatabaseName);
            return RedirectToAction(nameof(Index));
        }
        
        [HttpGet]
        public IActionResult Execute()
        {
            return View();
        }
        [HttpPost]
        public IActionResult ExecutePost(ScriptParameter model)
        {
            commandContext.ExecuteScriptsWithParameter(model.Parameter,model.Value,model.Command, model.ConnectionString,model.QueryScript);
            return RedirectToAction(nameof(Index));
        }

        //public IActionResult Privacy()
        //{
        //    return View();
        //}
        //[HttpPost]
        //public IActionResult UploadPost(ScriptFile model)
        //{
        //    string filepath = string.Empty;
        //    string foldername = "SqlFiles";
        //    var file = model.SqlFile;
        //    Guid nameguid = Guid.NewGuid();
        //    string webrootpath = webHost.WebRootPath;
        //    string filename = nameguid.ToString();
        //    string extension = Path.GetExtension(file.FileName);
        //    filename = filename + extension;
        //    string path = Path.Combine(webrootpath, foldername, filename);
        //    using (var fileStream = new FileStream(path, FileMode.Create))
        //    {
        //        file.CopyTo(fileStream);
        //    }
        //    string pathName = Path.Combine(foldername, filename);
        //    string fileUrl = foldername + "/" + filename;
        //    filepath = "https://localhost:44370/"+ fileUrl + "";
        //    commandContext.ExecuteSqlFile(model.ConnectionString, filepath);
        //    return RedirectToAction(nameof(Index));
        //}
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
