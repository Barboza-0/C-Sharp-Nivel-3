<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="URL.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container p-5 d-inline-flex col-5">
        <asp:TextBox ID="tbNombre" runat="server" CssClass="form-control me-2" placeholder="Ingrese su nombre" />
        <asp:Button ID="btnNombre" Text="Ingresar" runat="server" CssClass="btn btn-outline-dark" OnClick="btnNombre_Click" />
    </div>

</asp:Content>
