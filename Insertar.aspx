<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insertar.aspx.cs" Inherits="Insertar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" href="style.css" TYPE="text/css" media="screen">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1
        {
            height: 16px;
            width: 89px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: large; padding: 70px;">
    
        <br />
        <asp:Label ID="Label19" runat="server" Text="Ingreso Nuevo"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" BackColor="#66CCFF" Text="Clientes"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Nombre: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Telefono: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server" TextMode="Phone"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" 
            onclick="Button1_Click" Text="Ingresar" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" BackColor="#66CCFF" Text="Empresas"></asp:Label>
&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Nombre Empresa: "></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" 
            onclick="Button2_Click" Text="Ingresar" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="#66CCFF" Text="Fallas"></asp:Label>
&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Tipo de Falla: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label18" runat="server" Text="Detalle: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BorderStyle="Solid" 
            onclick="Button3_Click" Text="Ingresar" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" BackColor="#66CCFF" Text="Localidades"></asp:Label>
&nbsp;
        <asp:Label ID="Label14" runat="server" Text="Localidad: "></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BorderStyle="Solid" Text="Ingresar" 
            onclick="Button4_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" BackColor="#66CCFF" Text="Organismos"></asp:Label>
&nbsp;
        <asp:Label ID="Label16" runat="server" Text="Organismo: "></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" BorderStyle="Solid" Text="Ingresar" 
            onclick="Button5_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label17" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Default.aspx">HyperLink</asp:HyperLink>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=PC-2\DIEGO;Initial Catalog=db;Integrated Security=True" InsertCommand="INSERT INTO mydb.cliente(nombre,telefono) VALUES (@nombre,@telefono)
" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="nombre" />
                <asp:Parameter Name="telefono" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=PC-2\DIEGO;Initial Catalog=db;Integrated Security=True" InsertCommand="INSERT INTO mydb.empresas(nombre_empresa) VALUES (@nombre_empresa)
" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="nombre_empresa" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="Data Source=PC-2\DIEGO;Initial Catalog=db;Integrated Security=True" InsertCommand="INSERT INTO mydb.fallas(tipo_falla,detalle_falla)VALUES (@tipo_falla,@detalle_falla)
" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="tipo_falla" />
                <asp:Parameter Name="detalle_falla" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="Data Source=PC-2\DIEGO;Initial Catalog=db;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" InsertCommand="INSERT INTO mydb.localidades(nombre_locali) VALUES (@nombre_locali)
">
            <InsertParameters>
                <asp:Parameter Name="nombre_locali" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="Data Source=PC-2\DIEGO;Initial Catalog=db;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" InsertCommand="INSERT INTO mydb.organismos(nombre_org) VALUES (@nombre_org)
">
            <InsertParameters>
                <asp:Parameter Name="nombre_org" />
            </InsertParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="Data Source=PC-2\DIEGO;Initial Catalog=db;Integrated Security=True" 
            InsertCommand="INSERT INTO dbo.prueba(fecha) VALUES (@fecha)" 
            ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="fecha" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
