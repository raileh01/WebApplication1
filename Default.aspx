<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
   
    <asp:TextBox ID="CantidadId" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="Cantidad"></asp:Label><br />
    <asp:TextBox ID="NombreId" runat="server"></asp:TextBox><asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label><br />
    <asp:TextBox ID="ProductoId" runat="server"></asp:TextBox><asp:Label ID="Label3" runat="server" Text="Producto"></asp:Label><br />
    <asp:TextBox ID="PrecioId" runat="server"></asp:TextBox><asp:Label ID="Label4" runat="server" Text="Precio"></asp:Label><br /><br />
    <asp:Label ID="Label5" runat="server" Text="Opciones"></asp:Label>
    <br />
    <asp:DropDownList ID="SelectOpciones" runat="server">
        <asp:ListItem>Favoritos</asp:ListItem>
        <asp:ListItem>Carrito</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />

    <br />
    <br />

    <asp:Label ID="Label6" runat="server" Text="Tabla de favoritos:"></asp:Label><br /><br />
    <asp:BulletedList ID="ListaFavoritos" runat="server">
        <asp:ListItem>prueba item</asp:ListItem>
    </asp:BulletedList>

    <br />
    <br />

    <asp:Label ID="Label7" runat="server" Text="Tabla del carrito:"></asp:Label><br /><br />
    <asp:BulletedList ID="ListaCarrito" runat="server">
    </asp:BulletedList>
    <asp:Label ID="Label8" runat="server" Text="Suma SubTotal = "></asp:Label><asp:Label ID="SumaSubTotalItems" runat="server" Text="0"></asp:Label>

   
</asp:Content>
