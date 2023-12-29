<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Vehicles.aspx.cs" Inherits="Evento.Vehicles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="carouselExampleDark" class="carousel carousel-dark slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://di-uploads-pod10.dealerinspire.com/billjacobsbmw/uploads/2020/03/BMW-MY20-X5-DP-40i-50i-Next-Steps.png" class="rounded mx-auto d-block w-50 p-4" alt="">
            </div>
            <div class="carousel-item">
                <img src="https://platform.cstatic-images.com/xlarge/in/v2/stock_photos/a315fecd-0c7f-4713-babf-757054ba8d1d/9adbf1b2-357d-41f3-950c-349393289507.png" class="rounded mx-auto d-block w-50 p-4" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://www.motortrend.com/uploads/sites/10/2017/12/2018-bmw-x5-xdrive35d-suv-angular-front.png" class="rounded mx-auto d-block w-50 p-4" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

</asp:Content>
