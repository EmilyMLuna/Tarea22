using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Security.Cryptography.X509Certificates;
using System.Data;

namespace Tarea22
{
    public partial class Tarea22 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection cone = new SqlConnection("server=LAPTOP-ER10KJKK\\SQLEXPRESS; database=clinica");

        protected void TextBox2_TextChanged(EventArgs e)
        {

        }

        protected void Btningresar_Click(object sender, EventArgs e)
        {
            cone.Open();
            string consultar = "insert into pacientes values("+Txnombre.Text+")";
            consultar = "insert into pacientes values(" + Txedad.Text + ")";
            consultar = "insert into pacientes values(" + Txsexo.Text + ")";
           consultar = "insert into pacientes values(" + Txcanton.Text + ")";
           consultar = "insert into pacientes values(" + Txdistrito.Text + ")";
            consultar = "insert into pacientes values(" + Txprovincis.Text + ")";
            consultar = "insert into pacientes values(" + Txtelefono.Text + ")";
            consultar = "insert into pacientes values(" + Txseguro.Text + ")";


            SqlCommand coma = new SqlCommand(consultar,cone);
           
 
            coma.ExecuteNonQuery();
            cone.Close();


        }

        protected void Btneliminar_Click(object sender, EventArgs e)
        {
            cone.Open();
            string consultar = "delete from pacientes where Edad=" + Txedad.Text+"";
            SqlCommand coma = new SqlCommand(consultar,cone);
            coma.ExecuteNonQuery();
            cone.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cone.Open();
            string consultar = "update pacientes set Nombre=(" + Txnombre.Text + ")";
            consultar = "update pacientes set Edad=(" + Txedad.Text + ")";
            consultar = "update pacientes set Sexo=(" + Txsexo.Text + ")";
            consultar = "update pacientes set Canton=(" + Txcanton.Text + ")";
            consultar = "update pacientes set distrito=(" + Txdistrito.Text + ")";
            consultar = "update pacientes set provincia=(" + Txprovincis.Text + ")";
            consultar = "update pacientes set Telefono=(" + Txtelefono.Text + ")";
            consultar = "update pacientes set seguro=(" + Txseguro.Text + ")";
            SqlCommand coma = new SqlCommand(consultar, cone);
            int cant;
            cant = coma.ExecuteNonQuery();
            if (cant > 0)
            {
                Console.WriteLine("Se modifico");
            }
            cone.Close();

            }

        protected void Btnlistar_Click(object sender, EventArgs e)
        {
            cone.Open();
            SqlCommand coma = new SqlCommand("Select * from pacientes where Nombre = @Nombre", cone);
            coma.Parameters.AddWithValue("@Nombre", Txnombre.Text);
            SqlDataReader regi = coma.ExecuteReader();
            if (regi.Read())
            {
                Txnombre.Text = regi["Nombre"].ToString();
                Txedad.Text = regi["Edad"].ToString();
                Txsexo.Text = regi["Sexo"].ToString();
                Txcanton.Text = regi["Canton"].ToString();
                Txdistrito.Text = regi["Distrito"].ToString();
                Txprovincis.Text = regi["Provincia"].ToString();
                Txtelefono.Text = regi["Telefono"].ToString();
                Txseguro.Text = regi["Seguro"].ToString();
            }
            cone.Close();

        }
    }
}