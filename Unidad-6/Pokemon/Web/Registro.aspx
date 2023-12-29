<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row p-5 m-5 g-5">
        <asp:GridView ID="dgvPokemon" runat="server" OnSelectedIndexChanged="dgvPokemon_SelectedIndexChanged" OnPageIndexChanging="dgvPokemon_PageIndexChanging" DataKeyNames="Numero" AllowPaging="true" PageSize="12" CssClass="table table-bordered" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Numero" DataField="Numero" />
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Tipo" DataField="Tipo" />
                <asp:BoundField HeaderText="Debilidad" DataField="Debilidad" />
                <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
                <asp:CommandField HeaderText="Modificar / Eliminar" ShowSelectButton="true" SelectText="Seleccionar" />
            </Columns>
        </asp:GridView>
        <div class="d-flex flex-row-reverse">
            <a href="Inicio.aspx" class="btn btn-dark">Cancelar</a>
            <asp:Button Text="Agregar" runat="server" ID="btnAgregar" CssClass="btn btn-success me-3" OnClick="btnAgregar_Click" />
        </div>
    </div>
</asp:Content>
