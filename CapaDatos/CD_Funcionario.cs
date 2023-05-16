using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CD_Funcionario
    {
        private CD_Conexion conexion = new CD_Conexion();

        SqlDataReader leer;
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();

        public DataTable Mostrar()
        {

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "MostrarFuncionario";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tabla.Load(leer);
            conexion.CerrarConexion();
            return tabla;

        }

        public void Insertar(int TipoId, string NumId, string Nombres, string Apellidos, int EstadoCivil, int Sexo, string Direccion, string Telefono, DateTime FechaNacimiento)
        {
            //PROCEDIMIENTO

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "InsetarFuncionario";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@TipoId", TipoId);
            comando.Parameters.AddWithValue("@NumId", NumId);
            comando.Parameters.AddWithValue("@Nombres", Nombres);
            comando.Parameters.AddWithValue("@Apellidos", Apellidos);
            comando.Parameters.AddWithValue("@EstadoCivil", EstadoCivil);
            comando.Parameters.AddWithValue("@Sexo", Sexo);
            comando.Parameters.AddWithValue("@Direccion", Direccion);
            comando.Parameters.AddWithValue("@Telefono", Telefono);
            comando.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento);

            comando.ExecuteNonQuery();

            comando.Parameters.Clear();

        }

        public void Editar(int idFuncionario, int TipoId, string NumId, string Nombres, string Apellidos, int EstadoCivil, int Sexo, string Direccion, string Telefono, DateTime FechaNacimiento)
        {

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EditarFuncionario";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@idFuncionario", idFuncionario);
            comando.Parameters.AddWithValue("@TipoId", TipoId);
            comando.Parameters.AddWithValue("@NumId", NumId);
            comando.Parameters.AddWithValue("@Nombres", Nombres);
            comando.Parameters.AddWithValue("@Apellidos", Apellidos);
            comando.Parameters.AddWithValue("@EstadoCivil", EstadoCivil);
            comando.Parameters.AddWithValue("@Sexo", Sexo);
            comando.Parameters.AddWithValue("@Direccion", Direccion);
            comando.Parameters.AddWithValue("@Telefono", Telefono);
            comando.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento);

            comando.ExecuteNonQuery();

            comando.Parameters.Clear();
        }

        public void Eliminar(int idFuncionario)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarFuncionario";
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@idFuncionario", idFuncionario);

            comando.ExecuteNonQuery();

            comando.Parameters.Clear();
        }

    }
}
