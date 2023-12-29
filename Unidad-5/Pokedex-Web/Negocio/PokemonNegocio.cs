using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Acceso_a_Datos;
using Dominio;

namespace Negocio
{
    public class PokemonNegocio
    {
        private AccesoDatos datos = new AccesoDatos();
        public List<Pokemon> listar()
        {
            List<Pokemon> listaPokemon = new List<Pokemon>();
            try
            {
                datos.SetProcedimiento("storedListar");
                datos.RunLectura();
                while(datos.Lector.Read())
                {
                    Pokemon aux = new Pokemon();
                    aux.Numero = (int)datos.Lector["Numero"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    if (!(datos.Lector["UrlImagen"] is DBNull))
                    {
                        aux.UrlImagen = (string)datos.Lector["UrlImagen"];
                    }
                    aux.Tipo = new Elemento();
                    aux.Tipo.Numero = (int)datos.Lector["IdTipo"];
                    aux.Tipo.Descripcion = (string)datos.Lector["Tipo"];
                    aux.Debilidad = new Elemento();
                    aux.Debilidad.Numero = (int)datos.Lector["IdDebilidad"];
                    aux.Debilidad.Descripcion = (string)datos.Lector["Debilidad"];

                    listaPokemon.Add(aux);
                }
                return listaPokemon;
            }
            catch(Exception error)
            {
                throw error;
            }
            finally
            {
                datos.CloseConexion();
            }
        }
        public void agregar(Pokemon nuevo)
        {
            try
            {
                datos.SetConsulta("insert into POKEMONS (Numero, Nombre, Descripcion, UrlImagen, Idtipo, IdDebilidad, Activo) values(\" + nuevo.Numero + \",'\" + nuevo.Nombre + \"', '\" + nuevo.Descripcion + \"', '\" + nuevo.UrlImagen + \"', @IdTipo, @IdDebilidad, 1)");
                datos.SetParametro("@IdTipo", nuevo.Tipo.Numero);
                datos.SetParametro("@IdDebilidad", nuevo.Debilidad.Numero);
                datos.RunAccion();
            }
            catch(Exception error)
            {
                throw error;
            }
            finally
            {
                datos.CloseConexion();
            }
        }
        public void modificar(Pokemon modificar)
        {
            try
            {
                datos.SetConsulta("Update POKEMONS set Numero = @Numero, Nombre = @Nombre, Descripcion = @Descripcion, UrlImagen = @UrlImagen, IdTipo = @IdTipo, IdDebilidad = @IdDebilidad where Numero = @NumeroId");
                datos.SetParametro("@Numero", modificar.Numero);
                datos.SetParametro("@Nombre", modificar.Nombre);
                datos.SetParametro("@Descripcion", modificar.Descripcion);
                datos.SetParametro("@UrlImagen", modificar.UrlImagen);
                datos.SetParametro("@IdTipo", modificar.Tipo.Numero);
                datos.SetParametro("@IdDebilidad", modificar.Debilidad.Numero);
                datos.SetParametro("@NumeroId", modificar.Numero);

                datos.RunAccion();
            }
            catch(Exception error)
            {
                throw error;
            }
        }
        public void eliminar(int numero)
        {
            try
            {
                datos.SetConsulta("Update POKEMONS set Activo = 0 where Numero = @Numero");
                datos.SetParametro("@Numero", numero);
                datos.RunAccion();
            }
            catch(Exception error)
            {
                throw error;
            }
        }
    }
}
