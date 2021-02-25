<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">

        <div class="row">
            <label for="inputCantidad">Cantidad</label>
            <input type="number" class="form-control" id="inputCantidad">

            <label for="inputNombre">Nombre</label>
            <input type="text" class="form-control" id="inputNombre">

            <label for="inputProducto">Producto</label>
            <input type="text" class="form-control" id="inputProducto">

            <label for="inputPrecio">Precio Unitario</label>
            <input type="number" class="form-control" id="inputPrecio">

            <div class="input-group-prepend">
                <label class="input-group-text" for="inputOpciones">Options</label>
            </div>
            <select class="custom-select" id="inputOpciones">
                <option value="favoritos">Favoritos</option>
                <option value="carrito">Carrito</option>
            </select>
            <br />
            <button onclick ="prueba1(); return false;" id="agregarId" class="btn btn-primary">Agregar</button>
        </div>

        <div class="row">
            <br />
            <div class="col-6">
                <div class="card" style="width: 18rem;">
                <div class="card-header">
                    <h4>Favoritos</h4>
                </div>
                    <ul class="list-group list-group-flush" id="favoritosListaId">
                    </ul>
                </div>
                <div class="card-footer text-muted">
                    Suma Sub Total Item = <strong id="sumaTotalFavoritos">0</strong>
                </div>
            </div>

            <div class="col-6">
                <div class="card" style="width: 18rem;">
                <div class="card-header">
                    <h4>Carrito</h4>
                </div>
                    <ul class="list-group list-group-flush" id="carritoListaId">
                    </ul>
                </div>
                <div class="card-footer text-muted">
                    Suma Sub Total Item = <strong id="sumaTotalCarrito">0</strong> <br />
                </div>
            </div>
        </div>

    </div>

    <script type="text/javascript">

        var sumaTotalFavoritos = 0;
        var sumaTotalCarrito = 0;
        
        function prueba1() {
            try {
                console.log("hola")
                var tipoOpcion = $("#inputOpciones").val();
                var tagHtml;

                if (tipoOpcion == "favoritos") {
                    var nombre = $("#inputNombre").val();
                    var producto = $("#inputProducto").val();
                    var precio = $("#inputPrecio").val();

                    tagHtml = `<br>Nombre = ${nombre} <br>Producto = ${producto} <br>Precio = ${precio}`;

                    $("#favoritosListaId").append('<li class="list-group-item"' + tagHtml);
                    sumaTotalFavoritos += parseFloat(precio) * cantidad;
                    $("#sumaTotalFavoritos").text(sumaTotalFavoritos);

                } else {
                    var cantidad = $("#inputCantidad").val();
                    var nombre = $("#inputNombre").val();
                    var precio = $("#inputPrecio").val();
                    var producto = $("#inputProducto").val();
                    

                    tagHtml = `<br>Cantidad = ${cantidad} <br>Nombre = ${nombre} <br>Precio Unitario = ${parseFloat(precio)} <br>Sub Total = ${parseFloat(precio) * cantidad}`;

                    $("#carritoListaId").append('<li class="list-group-item"' + tagHtml);
                    sumaTotalCarrito += parseFloat(precio) * cantidad;
                    $("#sumaTotalCarrito").text(sumaTotalCarrito);
                }
            } catch {
                return false;
            }
        }
    </script>
</asp:Content>
