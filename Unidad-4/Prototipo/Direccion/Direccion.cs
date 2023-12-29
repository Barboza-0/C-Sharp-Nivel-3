using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Direcciones
{
    public class Direccion
    {
        public int Id { get; set; }
        public string Calle { get; set; }
        public int Altura { get; set; }
    }

    public class DireccionNegocio
    {
        public List<Direccion> listar()
        {
            List<Direccion> lista = new List<Direccion>();
            lista.Add(new Direccion());
            lista.Add(new Direccion());

            lista[0].Id = 0;
            lista[0].Calle = "A1";
            lista[0].Altura = 80;

            lista[1].Id = 1;
            lista[1].Calle = "A2";
            lista[1].Altura = 67;

            return lista;
        }
    }
}
