<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Grilla.Formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row p-5">
        <div class="col-6">
            <asp:TextBox runat="server" ID="tbId" CssClass="form-control mb-3" TextMode="Number" PlaceHolder="ID" />
            <asp:TextBox runat="server" ID="tbModelo" CssClass="form-control mb-3" PlaceHolder="Modelo" />
            <asp:TextBox runat="server" ID="tbMarca" CssClass="form-control mb-3" PlaceHolder="Marca" />
            <asp:DropDownList ID="ddlColor" runat="server" CssClass="form-select mb-3"></asp:DropDownList>
            <asp:TextBox runat="server" ID="tbFecha" CssClass="form-control mb-3" TextMode="Date" />
            <asp:CheckBox runat="server" ID="ckbUsado" /><label class="me-5 mb-3">-Usado</label>
            <asp:CheckBox runat="server" ID="ckbImportado" /><label class="me-5 mb-3">-Importado</label>
            <div class="d-flex flex-row-reverse">
                <a href="/" class="btn btn-dark">
                    Cancelar
                </a>
                <asp:Button Text="Ingresar" runat="server" ID="btnIngresar" CssClass="btn btn-success me-3" OnClick="btnIngresar_Click" />
                <asp:Button Text="Modificar" runat="server" ID="btnModificar" CssClass="btn btn-warning me-3" Visible="false" OnClick="btnModificar_Click" />
                <asp:Button Text="Eliminar" runat="server" ID="btnEliminar" CssClass="btn btn-danger me-3" Visible="false" OnClick="btnEliminar_Click" />
            </div>
        </div>
    </div>

</asp:Content>
