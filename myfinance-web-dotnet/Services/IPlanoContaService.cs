using myfinance_web_dotnet.Domain;

namespace myfinance_web_dotnet.Services
{
    public interface IPlanoContaService
    {
        List<PlanoConta> ListarPlanoContas();
        void SalvarPlanoConta(PlanoConta planoConta);
        void ExcluirPlanoConta(int planoContaId);
        PlanoConta ObterPlanoConta(int planoContaId);


    }
}