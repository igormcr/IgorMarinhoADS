using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using IgorMarinho_WebApp;

namespace IgorMarinho_WebApp.Controllers
{
    public class acc_transController : Controller
    {
        private Model1Container db = new Model1Container();

        // GET: acc_trans
        public ActionResult Index()
        {
            return View(db.acc_trans.ToList());
        }

        // GET: acc_trans/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            acc_trans acc_trans = db.acc_trans.Find(id);
            if (acc_trans == null)
            {
                return HttpNotFound();
            }
            return View(acc_trans);
        }

        // GET: acc_trans/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: acc_trans/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "trans_id,acc_id,trans_name,trans_value,trans_reg_date,trans_rem_date,repeat")] acc_trans acc_trans)
        {
            if (ModelState.IsValid)
            {
                acc_trans.trans_reg_date = Convert.ToString(DateTime.Now);
                

                db.acc_trans.Add(acc_trans);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(acc_trans);
        }

        // GET: acc_trans/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            acc_trans acc_trans = db.acc_trans.Find(id);
            if (acc_trans == null)
            {
                return HttpNotFound();
            }
            return View(acc_trans);
        }

        // POST: acc_trans/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "trans_id,acc_id,trans_name,trans_value,trans_reg_date,trans_rem_date,repeat")] acc_trans acc_trans)
        {
            if (ModelState.IsValid)
            {
                db.Entry(acc_trans).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(acc_trans);
        }

        // GET: acc_trans/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            acc_trans acc_trans = db.acc_trans.Find(id);
            if (acc_trans == null)
            {
                return HttpNotFound();
            }
            return View(acc_trans);
        }

        // POST: acc_trans/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            acc_trans acc_trans = db.acc_trans.Find(id);
            db.acc_trans.Remove(acc_trans);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
