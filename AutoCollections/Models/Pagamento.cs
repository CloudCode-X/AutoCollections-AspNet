namespace AutoCollections.Models
{
    public class Pagamento
    {
        public int IdPagamento { get; set; }

        public int TipoPagamento { get; set; }

        public int UltimosDigitosCartao { get; set; }

        public string DataValidadeCartao { get; set; }

        public int CPF {  get; set; }
    }
}
