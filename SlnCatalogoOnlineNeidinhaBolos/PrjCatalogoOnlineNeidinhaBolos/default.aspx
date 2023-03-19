<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PrjCatalogoOnlineNeidinhaBolos._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Neidinha Bolos - Início</title>
    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
</head>
<body>
  <header id="cabecalho">
    <img class="logotipo" src="../images/logo.png" alt="Logotipo da Neidinha Bolos" />
    <nav id="nav">
      <button aria-label="Abrir Menu" id="btn-mobile" aria-haspopup="true" aria-controls="menu" aria-expanded="false">Menu
        <span id="hamburger"></span>
      </button>
      <ul id="menu" role="menu">
        <li><a href="default.aspx">Início</a></li>
        <li><a href="pages/bolos.aspx">Bolos</a></li>
        <li><a href="pages/doces.aspx">Doces</a></li>
      </ul>
    </nav>
  </header>

    <main>
        <img class="fundo" src="images/fundo.jpg" alt="Imagem de um bolo de chocolate" />
        <div class="bem-vindo">
            <img class="logotipo-inicio" src="/images/quemsomos.png" alt="Alternate Text" />
            <h1>Seja Bem-vindo a Neidinha Bolos</h1>
            <p>Não há cheiro mais gostoso do que o do bolo assando no forno. 
                Um perfume cheio de sabor que preenche toda a sala e faz nossa barriga roncar. 
                A arte da confeitaria possui diversas delicadezas e detalhes que a tornam única e deslumbrante. 
                Confira as frases de bolo que separamos e fique com água na boca para comer esse doce perfeito!</p>
        </div>
        <h1>Objetivo</h1>
        <div class="objetivo">
            <img src="images/objetivos.png" alt="Alternate Text" />
            <p>Busco oportunidade de aplicar os meus conhecimentos e experiências para dar um atendimento diferenciado. 
               Tenho grande entusiasmo pelo atendimento ao cliente e desejo contribuir com o sucesso da imagem para minha empresa.</p>
        </div>
        <h1>Clientes Satisfeitos</h1>
        <div class="clientes-satisfeitos">
            <img src="images/cliente 1.jpg" alt="Cliente 1" />
            <img src="images/cliente 2.jpg" alt="Cliente 2" />
            <img src="images/cliente 3.png" alt="Cliente 3" />
        </div>
    </main>
    <hr />

    <footer class="rodape">
        <div class="rodape-container">
                <h3 class="direitos">&copy; NEDINHA BOLOS 2023</h3>
            <div class="rodape-container-atributos">
                <div class="rodape-contatos">
                    <h3><i class="fa-solid fa-address-book"></i> Contatos</h3> <br />
                    <ul>
                        <li><a href="https://www.facebook.com/neidinhabolossantos"><i class="fa-brands fa-facebook"></i>    Facebook</a></li>
                        <li><a href="https://www.instagram.com/neidinhabolos_santos/"><i class="fa-brands fa-instagram"></i>  Instagram</a></li>
                        <li><a href="https://wa.link/goiom4"><i class="fa-brands fa-whatsapp"></i>  WhatsApp</a></li>
                    </ul>
                </div>
                <div class="rodape-endereco">
                    <h3><i class="fa-solid fa-location-dot"></i> Endereço</h3> <br />
                    <ul>
                        <li>
                            <address>Rua José Alves do Nascimento, 167 - Santos/SP</address>
                        </li>
                    </ul>
                </div>
                <div class="rodape-desenvolvedores">
                    <h3><i class="fa-solid fa-code"></i> Desenvolvedor</h3>  <br />
                    <ul>
                        <li>&reg;SmartSolutions</li>
                    </ul>
                </div>
            </div>
<%--            <span class="criadores">Desenvolvido por &reg;SmartSolutions</span>--%>
        </div>
    </footer>
    <script src="https://kit.fontawesome.com/6d057d1912.js" crossorigin="anonymous"></script>
    <script src="js/menu.js"></script>
</body>
</html>
