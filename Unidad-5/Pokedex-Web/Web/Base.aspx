<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Base.aspx.cs" Inherits="Web.Base" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="d-flex p-5 m-5">
        <div class="row col">
            <asp:GridView runat="server" ID="dgvPokemons" CssClass="table table-bordered" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Numero" DataField="Numero" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                    <asp:BoundField HeaderText="Tipo" DataField="Tipo" />
                    <asp:BoundField HeaderText="Debilidad" DataField="Debilidad" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

</asp:Content>
