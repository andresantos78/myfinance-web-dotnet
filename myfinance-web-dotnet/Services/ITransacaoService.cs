using myfinance_web_dotnet.Domain;

namespace myfinance_web_dotnet.Services
{
    public interface ITransacaoService
    {
        List<Transacao> ListarTransacoes();
        void SalvarTransacao(Transacao transacao);
        void ExcluirTransacao(int transacaoId);
        Transacao ObterTransacao(int transacaoId);
    }
}