<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bolos.aspx.cs" Inherits="PrjCatalogoOnlineNeidinhaBolos.pages.bolos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Neidinha Bolos - Bolos</title>
    <link rel="icon" type="image/png" href="../images/quemsomos.png" />
    <link href="../css/reset.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<body>
    <header id="cabecalho">
        <img class="logotipo" src="../images/logo.png" alt="Logotipo da Neidinha Bolos" />
        <nav id="nav">
            <button aria-label="Abrir Menu" id="btn-mobile" aria-haspopup="true" aria-controls="menu" aria-expanded="false">
                Menu
       
                <span id="hamburger"></span>
            </button>
            <ul id="menu" role="menu">
                <li><a href="../default.aspx">Início</a></li>
                <li><a href="bolos.aspx">Bolos</a></li>
                <li><a href="doces.aspx">Doces</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="header-main">
            <h1 class="titulo">Neidinha Bolos - Catálogo Bolos</h1>
            <br />
            <div class="div-buscar">
                <input type="text" value="" id="inputDeBusca" />
                <a href="#" class="botao-buscar"><i class="fa-solid fa-magnifying-glass"></i></a>
            </div>
        </div>
        <span id="mensagem"></span>
        <div id="formCardBolos" runat="server">
            <%--TUDO QUE VEM DO BANCO DE PRODUTOS, APARECE NESSE DIV--%>
            <div class='card-container'>
                <img src="../images/produto.jpg" alt="Imagem de um bolo de nutela" />
                <h3>Bolo de Nutela</h3>
                <p>Excelente Bolo, Excelente Bolo, Excelente Bolo, Excelente Bolo,</p>
                <span>R$ 50,00</span> 
            </div>
            <div class='card-container'>
                <img src="../images/produto.jpg" alt="Imagem de um bolo de nutela" />
                <h3>Bolo de Nutela</h3>
                <p>Excelente Bolo, Excelente Bolo, Excelente Bolo, Excelente Bolo,</p>
                <span>R$ 50,00</span> 
            </div>
            <div class='card-container'>
                <img src="../images/produto.jpg" alt="Imagem de um bolo de nutela" />
                <h3>Bolo de Nutela</h3>
                <p>Excelente Bolo, Excelente Bolo, Excelente Bolo, Excelente Bolo,</p>
                <span>R$ 50,00</span> 
            </div>
            <div class='card-container'>
                <img src="../images/produto.jpg" alt="Imagem de um bolo de nutela" />
                <h3>Bolo de Nutela</h3>
                <p>Excelente Bolo, Excelente Bolo, Excelente Bolo, Excelente Bolo,</p>
                <span>R$ 50,00</span> 
            </div>
            <div class='card-container'>
                <img src="../images/bolo-chocolate.jpg" alt="Imagem de um bolo de nutela" />
                <h3>Bolo de Nutela</h3>
                <p>Excelente Bolo, Excelente Bolo, Excelente Bolo, Excelente Bolo,</p>
                <span>R$ 50,00</span> 
            </div>
            <div class='card-container'>
                <img src="../images/bolo-chocolate.jpg" alt="Imagem de um bolo de nutela" />
                <h3>Bolo de Nutela</h3>
                <p>Excelente Bolo, Excelente Bolo, Excelente Bolo, Excelente Bolo,</p>
                <span>R$ 50,00</span> 
            </div>
        </div>
    </main>
    <hr />

    <footer class="rodape">
        <div class="rodape-container">
            <h3 class="direitos">&copy; NEDINHA BOLOS 2023</h3>
            <div class="rodape-container-atributos">
                <div class="rodape-contatos">
                    <h3><i class="fa-solid fa-address-book"></i>Contatos</h3>
                    <br />
                    <ul>
                        <li><a href="https://www.facebook.com/neidinhabolossantos"><i class="fa-brands fa-facebook"></i>Facebook</a></li>
                        <li><a href="https://www.instagram.com/neidinhabolos_santos/"><i class="fa-brands fa-instagram"></i>Instagram</a></li>
                        <li><a href="https://wa.link/goiom4"><i class="fa-brands fa-whatsapp"></i>WhatsApp</a></li>
                    </ul>
                </div>
                <div class="rodape-endereco">
                    <h3><i class="fa-solid fa-location-dot"></i>Endereço</h3>
                    <br />
                    <ul>
                        <li>
                            <address>Rua José Alves do Nascimento, 167 - Santos/SP</address>
                        </li>
                    </ul>
                </div>
                <div class="rodape-desenvolvedores">
                    <h3>Desenvolvido por</h3>
                    <br />
                    <ul>
                        <li>&reg;SmartSolutions</li>
                    </ul>
                </div>
            </div>
            <%--            <span class="criadores">Desenvolvido por &reg;SmartSolutions</span>--%>
        </div>
    </footer>
    <script src="https://kit.fontawesome.com/6d057d1912.js" crossorigin="anonymous"></script>
    <script src="../js/menu.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        setInterval(function () {
            /* var valueInput = document.getElementById("inputDeBusca").value;*/

            var valueInput = "{buscaProduto:'" + $("#inputDeBusca").val() + "'}";

            $.ajax({
                type: "POST",
                url: "bolos.aspx/CarregarProdutos",
                data: valueInput,

                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $("#formCardBolos").html(response.d);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.log(xhr.responseText);
                }
            });
        }, 1000);

    </script>
    <script type="text/javascript" src="../js/vanilla-tilt.js"></script>
    <script>VanillaTilt.init(document.querySelectorAll(".card-container"));</script>
</body>
</html>
