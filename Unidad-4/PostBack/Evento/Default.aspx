<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Evento.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center p-5">
        <div class="p-2">
            <div class="p-2 d-inline-flex">
                <asp:TextBox ID="tbImg" runat="server" AutoPostBack="true" CssClass="form-control me-2" placeholder="Ingrese su nombre" OnTextChanged="tbImg_TextChanged"/>
                <asp:Button ID="btnHuh" CssClass="btn btn-outline-danger" Text="???" runat="server" type="submit" OnClick="btnHuh_Click" />
            </div>
            <div class="text-center">
                <asp:Label ID="lbImg" Text="" runat="server" CssClass="fs-4 fw-bold" />
            </div>
        </div>
        <img src="https://i.pinimg.com/564x/5b/91/e4/5b91e4a4717dbddf6c33ede9d9a809a6.jpg" class="rounded" alt="" />
    </div>

</asp:Content>
