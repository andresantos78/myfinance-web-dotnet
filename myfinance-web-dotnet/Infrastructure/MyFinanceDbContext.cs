using Microsoft.EntityFrameworkCore;
using myfinance_web_dotnet.Domain;

namespace myfinance_web_dotnet.Infrastructure
{
    public class MyFinanceDbContext : DbContext
    {
        public DbSet<Transacao> Transacao { get; set; }
        public DbSet<PlanoConta> PlanoConta { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=localhost;Database=myfinance;User Id=sa;Password=SuaSenha;Trusted_Connection=False;TrustServerCertificate=True;Timeout=60;");
        }
    }
}