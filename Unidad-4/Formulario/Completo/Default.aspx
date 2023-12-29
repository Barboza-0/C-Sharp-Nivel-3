<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Completo.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row p-5">
        <asp:GridView runat="server" ID="dgvAutos" CssClass="table table-bordered" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
                <asp:BoundField HeaderText="Marca" DataField="Marca" />
                <asp:BoundField HeaderText="Color" DataField="Color" />
                <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
                <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
