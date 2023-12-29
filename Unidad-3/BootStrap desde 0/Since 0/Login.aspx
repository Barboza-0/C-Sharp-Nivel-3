<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Since_0.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-3"></div>
        <div class="col">
            <div class="mb-3">
                <label for="tbCorreo" class="form-label">Correo / Email</label>
                <asp:TextBox runat="server" ID="tbCorreo" type="email" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="tbContraseña" class="form-label">Contraseña</label>
                <asp:TextBox runat="server" ID="tbContraseña" type="password" CssClass="form-control" />
            </div>
            <asp:Button Text="Ingresar" runat="server" CssClass="btn btn-primary" ID="btnIngresar" OnClick="btnIngresar_Click" />
        </div>
        <div class="col-3"></div>
    </div>



</asp:Content>
