<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Session.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container p-5">
        <div class="mb-3">
            <% if (user != ""){ %>
            <h2>Welcome!</h2>
            <asp:Label ID="lbUser" CssClass="fs-5 fw-semibold" Text="" runat="server" />
            </div>
        <div class="text-center">
            <p class="fs-4 fw-bold">-Link sosteniendo una gallina-</p>
            <img src="https://i.pinimg.com/564x/e7/42/39/e742391062d3c1224c22a101a80bfb69.jpg" class="rounded" alt="..." />
        </div>
            <% } %>
            <%else{ %>
        <div class="mb-3">
            <h2>Login to continue</h2>
            <% } %>
        </div>
    </div>

</asp:Content>
