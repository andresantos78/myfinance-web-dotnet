using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using myfinance_web_dotnet.Models;
using myfinance_web_dotnet.Services;

namespace myfinance_web_dotnet.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly ITransacaoService _transacaoService;
    public HomeController(ILogger<HomeController> logger, ITransacaoService transacaoService)
    {
        _logger = logger;
        _transacaoService = transacaoService;
    }

    public IActionResult Index()
    {
        var lstTransacoes = _transacaoService.ListarTransacoes();

        var lstModel = new List<SimpleReportViewModel>();
        lstModel.Add(new SimpleReportViewModel
        {
            DimensionOne = "Despesas",
            Quantity = lstTransacoes.Where(x => x.Tipo == "D").Sum(x => x.Valor)
        });
        lstModel.Add(new SimpleReportViewModel
        {
            DimensionOne = "Receitas",
            Quantity = lstTransacoes.Where(x => x.Tipo == "R").Sum(x => x.Valor)
        });
        return View(lstModel);
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
