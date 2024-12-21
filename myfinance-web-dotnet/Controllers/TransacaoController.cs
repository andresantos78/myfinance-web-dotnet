using Microsoft.AspNetCore.Mvc;
using myfinance_web_dotnet.Domain;
using myfinance_web_dotnet.Models;
using myfinance_web_dotnet.Services;

namespace myfinance_web_dotnet.Controllers
{
    [Route("[controller]")]
    public class TransacaoController : Controller
    {
        private readonly ITransacaoService _transacaoService;
        private readonly IPlanoContaService _planoContaService;
        

        public TransacaoController(ITransacaoService transacaoService,
        IPlanoContaService planoContaService)
        {
            _transacaoService = transacaoService;
            _planoContaService = planoContaService;
        }

        [Route("Index")]
        public IActionResult Index()
        {
            ViewBag.TransacaoList = _transacaoService.ListarTransacoes();
            return View();
        }

        [HttpPost]
        [HttpGet]
        [Route("Cadastro")]
        [Route("Cadastro/{id}")]
        public IActionResult Cadastro(TransacaoViewModel? model, int? id)
        {
            ViewBag.PlanoContaList = _planoContaService.ListarPlanoContas().Select(x => new PlanoContaViewModel
            {
                Id = x.Id,
                Nome = x.Nome,
                Tipo = x.Tipo
            }).ToList();

            if (id != null && !ModelState.IsValid) 
            {
                var transacao = _transacaoService.ObterTransacao((int)id);
                var transacaoViewModel = new TransacaoViewModel()
                {
                    Id = transacao.Id,
                    Data = transacao.Data,
                    Valor = transacao.Valor,
                    Historico = transacao.Historico,                    
                    Tipo = transacao.Tipo,
                    PlanoContaId = transacao.PlanoContaId
                };
                return View(transacaoViewModel);
            }
            else if (model != null && ModelState.IsValid)
            {
                var transacao = new Transacao
                {
                    Id = model.Id,
                    Data = model.Data,
                    Valor = model.Valor,
                    Historico = model.Historico,                    
                    Tipo = model.Tipo,
                    PlanoContaId = model.PlanoContaId,
                };
                _transacaoService.SalvarTransacao(transacao);
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
            _transacaoService.ExcluirTransacao(id);
            return RedirectToAction("Index");
        }

    }
}