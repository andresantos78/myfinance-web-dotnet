using myfinance_web_dotnet.Domain;
using myfinance_web_dotnet.Infrastructure;

namespace myfinance_web_dotnet.Services.Implementation
{
    public class TransacaoService : ITransacaoService
    {
        private readonly MyFinanceDbContext _myFinanceDbContext;
        public TransacaoService(MyFinanceDbContext myFinanceDbContext)
        {
            _myFinanceDbContext = myFinanceDbContext;
        }
        public void ExcluirTransacao(int transactionId)
        {
            var transacao = ObterTransacao(transactionId);
            _myFinanceDbContext.Attach(transacao);
            _myFinanceDbContext.Remove(transacao);
            _myFinanceDbContext.SaveChanges();
        }

        public List<Transacao> ListarTransacoes()
        {
            var transacaoList = _myFinanceDbContext.Transacao.ToList();
            return transacaoList;
        }

        public Transacao ObterTransacao(int transactionId)
        {
            var transacao = _myFinanceDbContext.Transacao.Where(x => x.Id == transactionId).First();
            return transacao;        
        }

        public void SalvarTransacao(Transacao transacao)
        {
            var dbSet = _myFinanceDbContext.Transacao;
            if (transacao.Id == null)
                dbSet.Add(transacao);
            else
            {
                dbSet.Attach(transacao);
                _myFinanceDbContext.Entry(transacao).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            }
            _myFinanceDbContext.SaveChanges();
        }
    }
}