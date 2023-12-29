<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Portfolio.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <header>
        <div class="container">
            <p class="logo">PORTFOLIO</p>
            <nav>
                <a href="#About">About</a>
                <a href="#Languages">Languages</a>
            </nav>
        </div>
    </header>
    <section id="hero">
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="About">
        <div class="container">
            <h2 id="logoAbout">About</h2>
            <p id="textAbout">I'm just looking for experience to improve my skills</p>
        </div>
    </section>
    <section id="Languages">
        <div class="container">
            <h2 id="logoLanguages">Languages</h2>
            <ul>
                <li>
                    <img src="https://www.w3.org/html/logo/downloads/HTML5_Badge_512.png" alt="HTML" />
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Logo_C_sharp.svg/1200px-Logo_C_sharp.svg.png" alt="C#" />
                    <img src="https://play-lh.googleusercontent.com/hvK9JjjMrQ-MSP98UVqmwpgojkc89P5tYvLUbvbnAqORVx3o7mUhk_NNdSD4S9_F8pw" alt="SQL" />
                    <img src="https://diziglobalsolution.com/wp-content/uploads/2023/04/logo-css-3-1536.png" alt="CSS" />
                </li>
            </ul>
        </div>
    </section>
</asp:Content>
