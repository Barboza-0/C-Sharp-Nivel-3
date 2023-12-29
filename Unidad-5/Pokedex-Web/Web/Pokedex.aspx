<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Pokedex.aspx.cs" Inherits="Web.Pokedex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<div class="row row-cols-1 row-cols-md-3 g-4 p-5 m-5">
        <% 
            foreach (Dominio.Pokemon pokemon in ListaPokemon)
            {
        %>
        <div class="col">
            <div class="card h-100">
                <img src="<%: pokemon.UrlImagen %>" class="card-img-top" alt="Pokemon<%: pokemon.Numero %>">
                <h5 class="p-2 m-1 card-title"><%: pokemon.Nombre %></h5>
                <div class="card-body">
                    <p class="card-text"><%: pokemon.Descripcion %></p>
                </div>
                <div class="card-footer">
                    <small class="text-body-secondary">Debilidad: <%: pokemon.Debilidad %></small>
                </div>
            </div>
        </div>
        <% } %>
    </div>--%>

    <div class="row row-cols-md-4 g-4 p-5 m-5">
        <asp:Repeater ID="repeaterPokemon" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="col-11 w-100">
                        <a href="Detalle.aspx" class="link-underline link-underline-opacity-0 text-dark">
                            <img src="<%#Eval("UrlImagen")%>" class="card-img-top card border-white bg-dark bg-opacity-10" alt="Pokemon<%#Eval("Numero")%>" />
                            <div class="container">
                                <p class="text-secondary fw-semibold h6">N.°000<%#Eval("Numero")%></p>
                                <p class="fs-4 fw-semibold h6"><%#Eval("Nombre")%></p>
                                <p class="badge text-bg-success"><%#Eval("Tipo")%></p>
                            </div>
                       </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
