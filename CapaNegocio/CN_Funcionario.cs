using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class CN_Funcionario
    {
        private CD_Funcionario objetoCD = new CD_Funcionario();

        public DataTable MostrarFuncionarios()
        {

            DataTable tabla = new DataTable();
            tabla = objetoCD.Mostrar();
            return tabla;
        }
        public void InsertarFunc(string TipoId, string NumId, string Nombres, string Apellidos, string EstadoCivil, string Sexo, string Direccion, string Telefono, string FechaNacimiento)
        {

            objetoCD.Insertar(int.Parse(TipoId), NumId, Nombres, Apellidos, int.Parse(EstadoCivil), int.Parse(Sexo), Direccion, Telefono, Convert.ToDateTime(FechaNacimiento));
        }

        public void EditarFunc(string idFuncionario, string TipoId, string NumId, string Nombres, string Apellidos, string EstadoCivil, string Sexo, string Direccion, string Telefono, string FechaNacimiento)
        {
            objetoCD.Editar(int.Parse(idFuncionario), int.Parse(TipoId), NumId, Nombres, Apellidos, int.Parse(EstadoCivil), int.Parse(Sexo), Direccion, Telefono, Convert.ToDateTime(FechaNacimiento));
        }

        public void EliminarFunc(string idFuncionario)
        {

            objetoCD.Eliminar(Convert.ToInt32(idFuncionario));
        }
    }
}
