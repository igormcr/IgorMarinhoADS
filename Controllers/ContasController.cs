using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication1_IgorMarinhoCarneiroRodrigues2021.Models;

namespace WebApplication1_IgorMarinhoCarneiroRodrigues2021.Controllers
{
    public class ContasController : Controller
    {
        private ContasContainer db = new ContasContainer();

        // GET: Contas
        public async Task<ActionResult> Index()
        {
            return View(await db.Contas.ToListAsync());
        }

        // GET: Contas/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Contas contas = await db.Contas.FindAsync(id);
            if (contas == null)
            {
                return HttpNotFound();
            }
            return View(contas);
        }

        // GET: Contas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Contas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id_conta,nome_conta,numero_conta,id_cliente,saldo,tipo_conta")] Contas contas)
        {
            if (ModelState.IsValid)
            {
                db.Contas.Add(contas);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(contas);
        }

        // GET: Contas/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Contas contas = await db.Contas.FindAsync(id);
            if (contas == null)
            {
                return HttpNotFound();
            }
            return View(contas);
        }

        // POST: Contas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id_conta,nome_conta,numero_conta,id_cliente,saldo,tipo_conta")] Contas contas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(contas).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(contas);
        }

        // GET: Contas/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Contas contas = await db.Contas.FindAsync(id);
            if (contas == null)
            {
                return HttpNotFound();
            }
            return View(contas);
        }

        // POST: Contas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Contas contas = await db.Contas.FindAsync(id);
            db.Contas.Remove(contas);
            await db.SaveChangesAsync();
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
