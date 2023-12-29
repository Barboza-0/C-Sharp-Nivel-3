<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="URL.Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container p-5">
        <h2>Welcome!</h2>
        <asp:Label ID="lbUser" Text="" runat="server" CssClass="fs-4" />
    </div>

</asp:Content>
