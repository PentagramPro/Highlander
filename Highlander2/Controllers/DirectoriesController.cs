using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Highlander2.Models;

namespace Highlander2.Controllers
{
    public class DirectoriesController : Controller
    {
        // GET: Directories
        public ActionResult Index()
        {

            DataModelContainer context = new DataModelContainer();
            var roots = context.DirectorySet.Where(d => d.Parent == null);
            ViewBag.Roots = roots;
            return View();
        }


        // POST: Directories/Create
        [HttpPost]
        public ActionResult Create(string DirectoryName, int? DirParentId)
        {
            DataModelContainer context = new DataModelContainer();
            Directory parent = context.DirectorySet.FirstOrDefault(d => d.Id == DirParentId);

            Directory dir = new Directory() {Name=DirectoryName,Parent = parent};
            
            
            context.DirectorySet.Add(dir);
            context.SaveChanges();
            var roots = context.DirectorySet.Where(d => d.Parent == null);
            ViewBag.Roots = roots;
            return View("Index");
        }
        
        
    }
}
