<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Pokedex.aspx.cs" Inherits="Web.Pokedex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row row-cols-md-4 g-5 p-5 m-5">
        <asp:Repeater ID="repeaterPokemon" runat="server">
             <itemTemplate>
                 <div class="col">
                     <div class="col-11 w-100">
                         <img src="<%#Eval("UrlImagen")%>" class="card-img-top bg-dark bg-opacity-10 card border-white" alt="Pokemon<%#Eval("Numero")%>"/>
                         <div class="container">
                             <p class="text-secondary fw-semibold h6">N.°000<%#Eval("Numero")%></p>
                             <p class="fs-4 fw-semibold h6"><%#Eval("Nombre")%></p>
                             <div class="d-flex">
                                <p class="badge text-bg-success me-1"><%#Eval("Tipo")%></p>
                                <p class="badge text-bg-danger"><%#Eval("Debilidad")%></p>
                             </div>
                         </div>
                     </div>
                 </div>
             </itemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
