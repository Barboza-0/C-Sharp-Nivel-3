using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.IO.Ports;
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
                while (datos.Lector.Read())
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
            catch (Exception error)
            {
                throw error;
            }
            finally
            {
                datos.CloseConexion();
            }
        }
        public List<Pokemon> listarTodos()
        {
            List<Pokemon> listaPokemon = new List<Pokemon>();
            try
            {
                datos.SetProcedimiento("storedListarTodos");
                datos.RunLectura();
                while (datos.Lector.Read())
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
                    aux.Activo = bool.Parse(datos.Lector["Activo"].ToString());

                    listaPokemon.Add(aux);
                }
                return listaPokemon;
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
        public List<Pokemon> cargarPokemon(int pokemon)
        {
            List<Pokemon> listaPokemon = new List<Pokemon>();
            try
            {
                datos.SetProcedimiento("storedFiltro");
                datos.SetParametro("@Numero", pokemon);
                datos.RunLectura();
                while (datos.Lector.Read())
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
                    aux.Activo = (bool)datos.Lector["Activo"];

                    listaPokemon.Add(aux);
                }
                return listaPokemon;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void agregar(Pokemon nuevo)
        {
            try
            {
                datos.SetProcedimiento("storedNuevoPokemon");
                datos.SetParametro("@Numero", nuevo.Numero);
                datos.SetParametro("@Nombre", nuevo.Nombre);
                datos.SetParametro("@Descripcion", nuevo.Descripcion);
                datos.SetParametro("@UrlImagen", nuevo.UrlImagen);
                datos.SetParametro("@IdTipo", nuevo.Tipo.Numero);
                datos.SetParametro("@IdDebilidad", nuevo.Debilidad.Numero);
                datos.RunAccion();
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
        public void modificar(Pokemon modificado)
        {
            try
            {
                datos.SetProcedimiento("storedModificarPokemon");
                datos.SetParametro("@Numero", modificado.Numero);
                datos.SetParametro("@Nombre", modificado.Nombre);
                datos.SetParametro("@Descripcion", modificado.Descripcion);
                datos.SetParametro("@UrlImagen", modificado.UrlImagen);
                datos.SetParametro("@IdTipo", modificado.Tipo.Numero);
                datos.SetParametro("@IdDebilidad", modificado.Debilidad.Numero);

                datos.RunAccion();
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
        public void eliminar(int eliminado)
        {
            try
            {
                datos.SetProcedimiento("storedEliminarPokemon");
                datos.SetParametro("@Numero", eliminado);
                datos.RunAccion();
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
        public void reactivar(int reactivar)
        {
            try
            {
                datos.SetProcedimiento("storedReactivar");
                datos.SetParametro("@Numero", reactivar);
                datos.RunAccion();
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
