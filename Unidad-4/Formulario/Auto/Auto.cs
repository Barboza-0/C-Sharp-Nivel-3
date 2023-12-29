using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace Auto
{
    public class Autos
    {
        public int Id { get; set; }
        public string Modelo { get; set; }
        public string Marca { get; set; }
        public string Color { get; set; }
        public DateTime Fecha { get; set; }
        public bool Usado { get; set; }
        public bool Importado { get; set; }
    }
    public class AutoNegocio
    {
        public List<Autos> listar()
        {
            List<Autos> lista = new List<Autos>();
            lista.Add(new Autos());
            lista.Add(new Autos());

            lista[0].Id = 1;
            lista[0].Modelo = "Golf";
            lista[0].Marca = "Volkswagen";
            lista[0].Color = "Blanco";
            lista[0].Fecha = DateTime.Now;
            lista[0].Usado = true;
            lista[0].Importado = false;

            lista[1].Id = 2;
            lista[1].Modelo = "M3";
            lista[1].Marca = "BMW";
            lista[1].Color = "Gris";
            lista[1].Fecha = DateTime.Now;
            lista[1].Usado = false;
            lista[1].Importado = true;

            return lista;
        }
    }
}
