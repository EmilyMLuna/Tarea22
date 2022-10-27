<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tarea22.aspx.cs" Inherits="Tarea22.Tarea22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 422px; width: 416px">
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre
            <asp:TextBox ID="Txnombre" runat="server" Height="16px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edad
            <asp:TextBox ID="Txedad" runat="server" Height="16px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sexo<asp:TextBox ID="Txsexo" runat="server" Height="16px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Canton<asp:TextBox ID="Txcanton" runat="server" Height="16px"></asp:TextBox>
            <asp:Button ID="Btnbuscar" runat="server" Height="19px" OnClick="Btnlistar_Click" style="margin-left: 29px; margin-top: 0px" Text="Buscar" Width="102px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Distrito<asp:TextBox ID="Txdistrito" runat="server" Height="16px"></asp:TextBox>
            <asp:Button ID="Btningresar0" runat="server" Height="21px" OnClick="Btningresar_Click" style="margin-left: 253px" Text="Ingresar" Width="110px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Provincia<asp:TextBox ID="Txprovincis" runat="server" Height="16px"></asp:TextBox>
            <asp:Button ID="Btnporcentaje" runat="server" Height="20px" style="margin-left: 27px" Text="Ver porcentajes" Width="104px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telefono<asp:TextBox ID="Txtelefono" runat="server" Height="16px" Width="123px"></asp:TextBox>
            <asp:Button ID="Btnmodificar" runat="server" Height="22px" OnClick="Button1_Click" style="margin-left: 26px" Text="Modificar" Width="107px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seguro
            <asp:TextBox ID="Txseguro" runat="server" Height="16px"></asp:TextBox>
            <asp:Button ID="Btneliminar" runat="server" Height="21px" OnClick="Btneliminar_Click" style="margin-left: 29px; margin-top: 0px" Text="Eliminar" Width="105px" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
