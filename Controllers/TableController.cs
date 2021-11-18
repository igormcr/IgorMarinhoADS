using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace IgorMarinho_WebApp.Controllers
{
    public class TableController : Controller
    {
        private Model1Container db = new Model1Container();
        // GET: Table
        public ActionResult Index()
        {
            Console.WriteLine(db.Accounts.ToList() +" "+ db.acc_trans.ToList());
            return View(db.acc_trans.ToList());
            
        }
    }
}