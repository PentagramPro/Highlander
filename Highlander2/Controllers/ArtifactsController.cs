using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Highlander2.Controllers
{
    public class ArtifactsController : Controller
    {
        // GET: Artifacts
        public PartialViewResult Display(uint artifactId)
        {

            return PartialView();
        }
    }
}