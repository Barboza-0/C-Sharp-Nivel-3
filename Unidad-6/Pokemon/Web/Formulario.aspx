<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Web.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager runat="server" />


    <div class="row p-5 m-5 g-5">
        <div class="col-5 card text-bg-dark p-1">
            <img src="https://i.pinimg.com/564x/95/29/7f/95297f250f9563193468f7969decc4f4.jpg" alt="NuevoPokemo" height="255" />
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="card-img-overlay text-center">
                        <div>
                            <asp:Label Text="Pokemon nuevo" runat="server" ID="lbNuevo" CssClass="fw-semibold fs-5 bg-dark bg-opacity-50 pe-5 ps-5" />
                        </div>
                        <asp:Image ID="imgPokemonNuevo" runat="server" Width="170" />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="col-7">
            <div class="d-flex">
                <asp:TextBox ID="tbNumero" runat="server" CssClass="form-control mb-2" PlaceHolder="Número" TextMode="Number"></asp:TextBox>
                <asp:TextBox ID="tbNombre" runat="server" CssClass="form-control mb-2 ms-2 pe-5" PlaceHolder="Nombre" TextMode="SingleLine"></asp:TextBox>
            </div>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="tbDescripcion" runat="server" CssClass="form-control mb-2" PlaceHolder="Descripción" TextMode="MultiLine"></asp:TextBox>
                    <asp:TextBox ID="tbUrlImagen" runat="server" CssClass="form-control mb-2" PlaceHolder="Link Imagen" TextMode="Url" AutoPostBack="true" OnTextChanged="tbUrlImagen_TextChanged"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
            <div class="d-flex">
                <p class="col-4 h6 ms-1">Tipo</p>
                <p class="col-4 h6 ms-1">Tipo secundario</p>
                <p class="col-4 h6 ms-1">Debilidad</p>
            </div>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="d-flex">
                        <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-select mb-3 me-1" ReadOnly="true" AutoPostBack="true" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged"></asp:DropDownList>
                        <asp:DropDownList ID="ddlTipoDos" runat="server" CssClass="form-select mb-3 me-1" ReadOnly="true" Enabled="false"></asp:DropDownList>
                        <asp:DropDownList ID="ddlDebilidad" runat="server" CssClass="form-select mb-3 ms-1" ReadOnly="true" Enabled="false"></asp:DropDownList>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <div class="d-flex flex-row-reverse">
                <a href="Registro.aspx" class="btn btn-dark ms-1">Cancelar</a>
                <asp:Button ID="btnAceptar" Text="Aceptar" runat="server" CssClass="btn btn-success ms-4" OnClick="btnAceptar_Click" />
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:Button ID="btnReactivar" Text="Reactivar" runat="server" CssClass="btn btn-warning" Visible="false" OnClick="btnReactivar_Click" />
                        <asp:Button ID="btnModal" Text="Eliminar" runat="server" CssClass="btn btn-danger me-5" Visible="false" data-bs-toggle="modal" data-bs-target="#modalConfirmar" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>

        <div class="modal fade" id="modalConfirmar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="lbTituloModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <p class="modal-title fs-5" id="lbTituloModal">Eliminar pokemon</p>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>¿Desea eliminar este pokemon?</p>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnEliminar" Text="Eliminar" runat="server" CssClass="btn btn-outline-danger" OnClick="btnEliminar_Click" />
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
