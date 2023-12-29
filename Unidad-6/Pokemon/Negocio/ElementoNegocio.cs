using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Acceso_a_Datos;
using Dominio;

namespace Negocio
{
    public class ElementoNegocio
    {
        private AccesoDatos datos = new AccesoDatos();
        public List<Elemento> listar()
        {
            List<Elemento> listaElemento = new List<Elemento>();
            try
            {
                datos.SetProcedimiento("storedListarElementos");
                datos.RunLectura();
                while(datos.Lector.Read())
                {
                    Elemento aux = new Elemento();
                    aux.Numero = (int)datos.Lector["Id"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];

                    listaElemento.Add(aux);
                }
                return listaElemento;
            }
            catch (Exception error)
            {
                throw error;
            }
            finally
            {
                datos.CloseConexion();
            }
        }
    }
}
