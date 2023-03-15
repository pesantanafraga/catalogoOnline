﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PrjCatalogoOnlineNeidinhaBolos._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Neidinha Bolos - Início</title>
    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <header class="cabecalho">
        <div class="menu-container">
            <ul class="menu">
                <li class="menu-item">
                    <img class="logotipo" src="images/logotipoSite.png" alt="Logotipo da Neidinha Bolos" /></li>
                <li class="menu-item"><a class="menu-item" href="default.aspx">Bolos</a></li>
                <li class="menu-item"><a class="menu-item" href="pages/doces.aspx">Doces</a></li>
                <li class="menu-item"><a class="menu-item" href="pages/contato.aspx">Contato</a></li>
            </ul>
        </div>
    </header>

    <main>
        <h1 class="titulo">Neidinha Bolos - Catálogo Online</h1>

        <form id="formCardBolos" runat="server">
            <div class="card-container">
                   <div class="card">
                    <img class="card-image-top" src="images/produto.jpg" alt="Imagem do Produto" />
                    <div class="card-body">
                        <asp:Label CssClass="card-title" ID="lblCardTitle" runat="server" Text="Nome do produto"></asp:Label>
                        <asp:Label CssClass="card-text" ID="lblCardText" runat="server" Text="Descrição do produto"></asp:Label>
                        <asp:Label CssClass="card-text" ID="lblValorProduto" runat="server" Text="Valor do produto"></asp:Label>
                    </div>
                </div>
            </div>
        </form>
    </main>
    <hr />

    <footer class="rodape">
        <div class="rodape-container">
            <strong><h3 class="direitos">&copy; NEDINHA BOLOS 2023</h3></strong>
            <span class="criadores">Desenvolvedores: Antonio Mikael, Rafael Gomes, Pedro Henrique e Pedro Santana.</span>
        </div>
    </footer>
</body>
</html>
