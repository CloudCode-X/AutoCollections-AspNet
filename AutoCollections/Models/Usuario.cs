namespace AutoCollections.Models
{
    public class Usuario
    {
        public required int IdUsuario {  get; set; }

        public required string NomeUsuario { get; set; }

        public required string EmailUsuario { get; set; }

        public required string SenhaUsuario { get; set; }
    }
}
