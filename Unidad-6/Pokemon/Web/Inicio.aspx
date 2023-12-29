<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Web.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row p-5 m-5 g-5">
        <div class="col-4">
            <div>
                <div class="card text-bg-dark p-1">
                    <img src="https://images.unsplash.com/photo-1701281941457-274900e0cfa7?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="card-img opacity-25" height="358" alt="PokeBall">
                    <div class="card-img-overlay">
                        <p class="fw-semibold fs-3">News</p>
                    </div>
                </div>
                <div class="position-relative mt-2">
                    <asp:Button Text="Registro" CssClass="btn btn-dark position-absolute top-0 start-0 ps-5 pe-5" runat="server" ID="btnRegistro" OnClick="btnRegistro_Click" />
                    <asp:LinkButton ID="lbPokemon" runat="server" CssClass="btn btn-dark position-absolute top-0 end-0 ps-4 pe-4" href="https://www.pokemon.com/el">Website</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-8 card text-bg-dark p-1">
            <img src="https://images.unsplash.com/photo-1665762389848-8a6acfe934c0?q=80&w=2033&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="card-img opacity-25" height="400" alt="PokeBall">
            <div class="card-img-overlay">
                <p class="fw-semibold fs-3">Community</p>
            </div>
        </div>
    </div>

</asp:Content>