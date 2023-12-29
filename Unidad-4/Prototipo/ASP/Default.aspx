<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row p-5">
        <asp:GridView runat="server" ID="dgvDireccion" DataKeyNames="Id" OnSelectedIndexChanged="dgvDireccion_SelectedIndexChanged" CssClass="table table-bordered" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Calle" DataField="Calle" />
                <asp:BoundField HeaderText="Altura" DataField="Altura" />
                <asp:CommandField ShowSelectButton="true" HeaderText="Editar" ControlStyle-CssClass="link-dark link-offset-3 link-underline-danger" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
