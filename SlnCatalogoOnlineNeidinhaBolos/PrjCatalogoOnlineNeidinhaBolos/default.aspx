<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PrjCatalogoOnlineNeidinhaBolos._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Neidinha Bolos - Início</title>
    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/inicio.css" rel="stylesheet" />
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
        <h1>Seja muito bem-vindo(a) à Neidinha Bolos!</h1>
        <div class="bem-vindo">
            
        <img class="fundo" src="images/doces-gif.gif" alt="Um Gif de pequena duração mostrando como a Neidinha faz os doces" />
            <div class="bolos-escritura">

            </div>
        </div>
        <div class="bolos">
            <img src="images/bolo-chocolate.jpg" alt="Imagem de um bolo de Chocolate" />
            <div class="bolos-escritura">
                <h1>Bolo de Chocolate</h1>
                <p>Delicioso bolo de chocolate, Delicioso bolo de chocolate, Delicioso bolo de chocolate.</p> <span>R$ 60,00</span>
                <br /> <br />
                    <a href="pages/bolos.aspx">Veja nossos bolos: <i class="fa-solid fa-arrow-up-right-from-square"></i></a> </p>
                
            </div>
        </div>
        <div class="doces">
            <img src="images/brigadeiro-beijinho.jpg" alt="Imagem de brigadeiros e beijinhos de forma misturada em uma bandeja" />
            <div class="doces-escritura">
                <h1>Doces</h1>
                <p>Aqui você encontra uma variedade de doces deliciosos para satisfazer seu paladar. 
                   Desde chocolates finos até balas coloridas e gomas de todos os sabores, nossos doces são 
                   feitos com ingredientes de alta qualidade e muito amor. 
                   Temos opções para todos os gostos e ocasiões.    <br /> <br />    
                   <a href="pages/doces.aspx">Veja nossos doces: <i class="fa-solid fa-arrow-up-right-from-square"></i></a>
                </p>
                
            </div>        
        </div>
        <h1>Clientes Satisfeitos</h1>
        <div class="clientes-satisfeitos">
            <div class="clientes-satisfeitos-img">
            <img src="images/cliente 1.jpg" alt="Cliente 1" />
            <img src="images/cliente 2.jpg" alt="Cliente 2" />
            <img src="images/cliente 3.png" alt="Cliente 3" />
            </div>
        </div>
    </main>
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
