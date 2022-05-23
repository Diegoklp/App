using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insertar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["nombre"].DefaultValue = TextBox1.Text;
        SqlDataSource1.InsertParameters["telefono"].DefaultValue = TextBox6.Text;
        SqlDataSource1.Insert();

        Label9.Text = "Se efectuó la carga";
        TextBox1.Text = "";
        TextBox6.Text = "";
    }
    protected void SqlDataSource1_Selecting(object sender,
        SqlDataSourceSelectingEventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource2.InsertParameters["nombre_empresa"].DefaultValue = TextBox2.Text;
        SqlDataSource2.Insert();

        Label11.Text = "Se efectuó la carga";
        TextBox2.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource3.InsertParameters["tipo_falla"].DefaultValue = TextBox3.Text;
        SqlDataSource3.InsertParameters["detalle_falla"].DefaultValue = TextBox7.Text;
        SqlDataSource3.Insert();

        Label13.Text = "Se efectuó la carga";
        TextBox3.Text = "";
        TextBox7.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlDataSource4.InsertParameters["nombre_locali"].DefaultValue = TextBox4.Text;
        SqlDataSource4.Insert();

        Label15.Text = "Se efectuó la carga";
        TextBox4.Text = "";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource5.InsertParameters["nombre_org"].DefaultValue = TextBox5.Text;
        SqlDataSource5.Insert();

        Label17.Text = "Se efectuó la carga";
        TextBox5.Text = "";

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlDataSource6.InsertParameters["fecha"].DefaultValue = TextBox11.Text;
        SqlDataSource6.Insert();

        Label31.Text = "Enviado";
        TextBox11.Text = "";
    }
}
    
