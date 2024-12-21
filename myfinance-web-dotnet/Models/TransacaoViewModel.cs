namespace myfinance_web_dotnet.Models
{
    public class TransacaoViewModel
    {
        public int? Id { get; set; }
        public DateTime Data { get; set; }
        public decimal Valor { get; set; }
        public string Historico { get; set; }
        public string Tipo { get; set; }
        public int PlanoContaId { get; set; }        
    }
}