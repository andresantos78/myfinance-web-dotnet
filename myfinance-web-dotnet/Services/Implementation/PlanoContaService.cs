using myfinance_web_dotnet.Domain;
using myfinance_web_dotnet.Infrastructure;

namespace myfinance_web_dotnet.Services.Implementation
{
    public class PlanoContaService : IPlanoContaService
    {
        private readonly MyFinanceDbContext _myFinanceDbContext;
        public PlanoContaService(MyFinanceDbContext myFinanceDbContext)
        {
            _myFinanceDbContext = myFinanceDbContext;
        }
        public void ExcluirPlanoConta(int planoContaId)
        {
            var planoConta = ObterPlanoConta(planoContaId);
            _myFinanceDbContext.Attach(planoConta);
            _myFinanceDbContext.Remove(planoConta);
            _myFinanceDbContext.SaveChanges();

        }

        public List<PlanoConta> ListarPlanoContas()
        {
            var planoContaList = _myFinanceDbContext.PlanoConta.ToList();
            return planoContaList;
        }

        public PlanoConta ObterPlanoConta(int planoContaId)
        {
            var planoConta = _myFinanceDbContext.PlanoConta.Where(x => x.Id == planoContaId).First();
            return planoConta;
        }

        public void SalvarPlanoConta(PlanoConta planoConta)
        {
            var dbSet = _myFinanceDbContext.PlanoConta;
            if (planoConta.Id == null)
                dbSet.Add(planoConta);
            else
            {
                dbSet.Attach(planoConta);
                _myFinanceDbContext.Entry(planoConta).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            }
            _myFinanceDbContext.SaveChanges();
        }
    }
}