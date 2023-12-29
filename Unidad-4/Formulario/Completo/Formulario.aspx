<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Completo.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row p-5">
        <div class="col-6">
            <asp:TextBox runat="server" ID="tbId" TextMode="Number" CssClass="form-control mb-3" PlaceHolder="ID" />
            <asp:TextBox runat="server" ID="tbModelo" CssClass="form-control mb-3" PlaceHolder="Modelo" />
            <asp:TextBox runat="server" ID="tbMarca" CssClass="form-control mb-3" PlaceHolder="Marca" />
            <asp:DropDownList runat="server" ID="ddlColor" CssClass="form-select mb-3"></asp:DropDownList>
            <asp:TextBox runat="server" ID="tbFecha" TextMode="Date" CssClass="form-control mb-3" PlaceHolder="Fecha" />
            <div class="mb-3">
                <asp:CheckBox ID="ckbUsado" runat="server" /><label class="me-5">-Usado</label>
                <asp:CheckBox ID="ckbImportado" runat="server" /><label class="me-5">-Importado</label>
            </div>
            <div class="d-flex flex-row-reverse">
                <a href="/" class="btn btn-danger">
                    Cancelar
                </a>
                <asp:Button Text="Ingresar" runat="server" ID="btnIngresar" CssClass="btn btn-success me-3" OnClick="btnAceptar_Click" />
            </div>
        </div>
    </div>

</asp:Content>
