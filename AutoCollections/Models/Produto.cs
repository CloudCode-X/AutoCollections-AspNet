namespace AutoCollections.Models
{
    public class Produto
    {
        public required int IdProduto { get; set; }

        public required string NomeProduto { get; set; }

        public required double PrecoProduto {  get; set; }

        public required string ImagemProduto { get; set; }

        public required int DimensoesProduto { get; set; }
    }
}
