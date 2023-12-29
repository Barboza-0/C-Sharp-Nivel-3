<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="ASP.Formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row p-5 col-5">

        <div>
            <asp:TextBox runat="server" ID="tbId" CssClass="form-control mb-3" PlaceHolder="Id"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbCalle" CssClass="form-control mb-3" PlaceHolder="Calle"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbAltura" CssClass="form-control mb-3" TextMode="Number" PlaceHolder="Altura"></asp:TextBox>
        </div>

        <div class="d-flex flex-row-reverse">
            <a href="/" class="btn btn-dark">Cancelar</a>
            <asp:Button Text="Modificar" runat="server" ID="btnModificar" CssClass="btn btn-warning me-3" Visible="false" OnClick="btnModificar_Click" />
            <asp:Button Text="Eliminar" runat="server" ID="btnEliminar" CssClass="btn btn-danger me-3" Visible="false" OnClick="btnEliminar_Click" />
            <asp:Button Text="Ingresar" runat="server" ID="btnIngresar" CssClass="btn btn-success me-3" Onclick="btnIngresar_Click" />
        </div>

    </div>

</asp:Content>
