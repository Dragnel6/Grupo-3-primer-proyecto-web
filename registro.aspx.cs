using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data ;
using System.Data.SqlClient;

namespace Grupo_3_primer_proyecto_web
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        //SqlConnection conexion = new SqlConnection("server = LAPTOP-JCD60568; database = sistema; Integrated Security = true");

        protected void btIngresar_Click(object sender, EventArgs e)
        {

            string usuario;
            string clave;

            if (txtUsuario.Text != "" & txtContra.Text != "")
            {

                // creamos la variable conexion con la cadena del Origen de datos Creado Que podemos ver aqui, bueno que usando el sqlDataSource creado podemos iniciar la conexion a la base de datos. 
                SqlConnection conexion = new SqlConnection(this.SqlDataSource1.ConnectionString);

                // Quitamos cualquier espacio digitado en el campo con la funcion TRIM 'Es recomendable aplicar TRIM aunque podria funcionar son usarla. 
            
                //Quite los "Trim" porque daban error
                usuario = (txtUsuario.Text);
                clave = (txtContra.Text);

                // Creamos la variable de consulta y le asignamos precisamente la consulta

                //Aqui comparamos si existe la direccion de correo

                /*SqlCommand com = new SqlCommand("select Usuario, Contrasena from Empleado where Usuario = @user AND Contrasena = @pass", conexion);
                com.Parameters.AddWithValue("@user", txtusuario.Text);
                com.Parameters.AddWithValue("@pass", txtcontra.Text);*/

                string cadena = "SELECT * FROM ingreso WHERE Usuario = @nombre and Contrasena = @clave";
                SqlCommand consulta_comprobar = new SqlCommand(cadena, conexion);

                // Abrimos la conexión
                conexion.Open();

                // Asignamos a un parametro el valor del campo correo ingresado para pasarlo a la consulta
                consulta_comprobar.Parameters.AddWithValue("@nombre", usuario);
                consulta_comprobar.Parameters.AddWithValue("@clave", clave);
                
                 //Creamos la variable i para contar los registros encontrados
                 int i;

                //Con la funcion ExecuteScalar determinamos cuantos registros hay 
                //Si tenemos al menos uno es que ya existe un usuario que usa el correo ingresado
                 
                 i = System.Convert.ToInt32(consulta_comprobar.ExecuteScalar());

                //Tomamos la desicion si existe o no
                if (i > 0)
                {
                    Session["autorizado"] = usuario;
                    //Session("autorizado") = usuario;
                    Response.Redirect("~/index.aspx");

                    //Cerramos la conexion
                    conexion.Close();
                }
                else
                {
                    this.lblLogin.Text = "Usuario o contraseña incorrectos";
                }

            }

        }
    }
}