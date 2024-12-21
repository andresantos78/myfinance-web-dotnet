using Microsoft.AspNetCore.Mvc;
using myfinance_web_dotnet.Domain;
using myfinance_web_dotnet.Models;
using myfinance_web_dotnet.Services;

namespace myfinance_web_dotnet.Controllers
{
    [Route("[controller]")]
    public class PlanoContaController : Controller
    {
        private readonly IPlanoContaService _planoContaService;
        public PlanoContaController(IPlanoContaService planoContaService)
        {
            _planoContaService = planoContaService;
        }

        [Route("Index")]
        public IActionResult Index()
        {
            ViewBag.PlanoContaList = _planoContaService.ListarPlanoContas();
            return View();
        }

        [HttpPost]
        [HttpGet]
        [Route("Cadastro")]
        [Route("Cadastro/{id}")]
        public IActionResult Cadastro(PlanoContaViewModel? model, int? id)
        {
            if (id != null && !ModelState.IsValid)
            {
                var registro = _planoContaService.ObterPlanoConta((int)id);
                var planoContaViewModel = new PlanoContaViewModel()
                {
                    Id = registro.Id,
                    Nome = registro.Nome,
                    Tipo = registro.Tipo
                };
                return View(planoContaViewModel);
            }
            else if (model != null && ModelState.IsValid)
            {
                var planoConta = new PlanoConta
                {
                    Id = model.Id,
                    Nome = model.Nome,
                    Tipo = model.Tipo
                };
                _planoContaService.SalvarPlanoConta(planoConta);
                return RedirectToAction("Index");
            }
            else
            {
                return View();
            }
        }

        [HttpGet]
        [Route("Excluir/{id}")]
        public IActionResult Excluir(int id)
        {
            _planoContaService.ExcluirPlanoConta(id);
            return RedirectToAction("Index");
        }
    }
}