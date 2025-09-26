namespace AutoCollections.Models
{
    public class ItemCarrinho
    {
        public required int IdCarrinho { get; set; }

        public required int IdCliente { get; set; }

        public required int IdProduto { get; set; }

        public required int QuantidadeProduto { get; set; }
    }
}
