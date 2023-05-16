using CapaNegocio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace CapaPresentacion
{
    public partial class Funcionario : Form
    {
        CN_Funcionario objetoCN = new CN_Funcionario();
        private string idFuncionario = null;
        private bool Editar = false;
        public Funcionario()
        {
            InitializeComponent();
        }

        private void Funcionario_Load(object sender, EventArgs e)
        {
            MostrarProdctos();

            mtdllenarListas();
        }

        private void mtdllenarListas()
        {
            ddlTipoId.DisplayMember = "Text";
            ddlTipoId.ValueMember = "Value";

            var items = new[] {
                new { Text = "--Seleccione--", Value = "" },
                new { Text = "CC", Value = "1" },
                new { Text = "TI", Value = "2" }
            };

            ddlTipoId.DataSource = items;

            ddlEstadoCivil.DisplayMember = "Text";
            ddlEstadoCivil.ValueMember = "Value";

            var items2 = new[] {
                new { Text = "--Seleccione--", Value = "" },
                new { Text = "Soltero", Value = "1" },
                new { Text = "Casado", Value = "2" },
                new { Text = "Union Libre", Value = "3" }
            };

            ddlEstadoCivil.DataSource = items2;

            ddlSexo.DisplayMember = "Text";
            ddlSexo.ValueMember = "Value";

            var items3 = new[] {
                new { Text = "--Seleccione--", Value = "" },
                new { Text = "Masculino", Value = "1" },
                new { Text = "Femenino", Value = "2" }
            };

            ddlSexo.DataSource = items3;
        }

        private void MostrarProdctos()
        {

            CN_Funcionario objeto = new CN_Funcionario();
            dataGridView1.DataSource = objeto.MostrarFuncionarios();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            //INSERTAR
            if (Editar == false)
            {
                try
                {
                    objetoCN.InsertarFunc(ddlTipoId.SelectedValue.ToString(), txtNumId.Text, txtNombres.Text, txtApellidos.Text, ddlEstadoCivil.SelectedValue.ToString(), ddlSexo.SelectedValue.ToString(), txtDireccion.Text, ddlTelefono.Text, txtFechaNac.Value.ToString());
                    MessageBox.Show("se inserto correctamente");
                    MostrarProdctos();
                    limpiarForm();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("no se pudo insertar los datos por: " + ex);
                }
            }
            //EDITAR
            if (Editar == true)
            {

                try
                {
                    objetoCN.EditarFunc(idFuncionario, ddlTipoId.SelectedValue.ToString(), txtNumId.Text, txtNombres.Text, txtApellidos.Text, ddlEstadoCivil.SelectedValue.ToString(), ddlSexo.SelectedValue.ToString(), txtDireccion.Text, ddlTelefono.Text, txtFechaNac.Value.ToString());
                    MessageBox.Show("se edito correctamente");
                    MostrarProdctos();
                    limpiarForm();
                    Editar = false;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("no se pudo editar los datos por: " + ex);
                }
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                Editar = true;
                ddlTipoId.SelectedValue = dataGridView1.CurrentRow.Cells["Id_TipoIdentificacion"].Value.ToString();
                txtNumId.Text = dataGridView1.CurrentRow.Cells["NumeroIdentificacion"].Value.ToString();
                txtNombres.Text = dataGridView1.CurrentRow.Cells["Nombres"].Value.ToString();
                txtApellidos.Text = dataGridView1.CurrentRow.Cells["Apellidos"].Value.ToString();
                ddlEstadoCivil.SelectedValue = dataGridView1.CurrentRow.Cells["Id_EstadoCivil"].Value.ToString();
                ddlSexo.SelectedValue = dataGridView1.CurrentRow.Cells["Id_Sexo"].Value.ToString();
                txtDireccion.Text = dataGridView1.CurrentRow.Cells["Direccion"].Value.ToString();
                ddlTelefono.Text = dataGridView1.CurrentRow.Cells["Telefono"].Value.ToString();
                txtFechaNac.Text = dataGridView1.CurrentRow.Cells["FechaNacimiento"].Value.ToString();
                idFuncionario = dataGridView1.CurrentRow.Cells["Id_Funcionario"].Value.ToString();
            }
            else
                MessageBox.Show("seleccione una fila por favor");
        }

        private void limpiarForm()
        {
            ddlTipoId.ResetText();
            txtNumId.Clear();
            txtNombres.Clear();
            txtApellidos.Clear();
            txtDireccion.Clear();
            ddlTelefono.Clear();
            txtFechaNac.ResetText();
            ddlEstadoCivil.ResetText();
            ddlSexo.ResetText();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                idFuncionario = dataGridView1.CurrentRow.Cells["Id_Funcionario"].Value.ToString();
                objetoCN.EliminarFunc(idFuncionario);
                MessageBox.Show("Eliminado correctamente");
                MostrarProdctos();
            }
            else
                MessageBox.Show("seleccione una fila por favor");

        }
    }
}
