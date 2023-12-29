<%@ Page Title="Pagina principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div>
            <asp:Label ID="lbNombre" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="tbNombre" runat="server"></asp:TextBox>
            <div>
                <asp:Button ID="btnNombre" runat="server" Text="Ingresar" OnClick="btnNombre_Click" />
                <asp:Label ID="lbSaludo" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </main>
</asp:Content>
