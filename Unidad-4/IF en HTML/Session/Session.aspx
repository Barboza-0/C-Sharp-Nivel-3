<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="Session.Session" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-5">
        <div class="mb-3">
            <label class="form-label fs-4">Login</label>
            <asp:TextBox ID="tbUser" CssClass="form-control" placeholder="User or email" runat="server" />
        </div>
        <div class="mb-3">
            <asp:TextBox ID="tbPass" type="password" CssClass="form-control" placeholder="Password" runat="server" />
        </div>
        <div class="mb-3">
            <asp:Button ID="btnIngresar" CssClass="btn btn-primary" Text="Ingresar" runat="server" OnClick="btnIngresar_Click" />
        </div>
    </div>
</asp:Content>