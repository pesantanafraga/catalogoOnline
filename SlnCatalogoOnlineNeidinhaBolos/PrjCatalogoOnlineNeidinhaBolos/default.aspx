<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PrjCatalogoOnlineNeidinhaBolos._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" type="image/png" href="images/quemsomos.png" />
    <link href="css/reset.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
    <link href="css/inicio.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <title>Neidinha Bolos - Início</title>
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
                <li><a href="default.aspx">Início</a></li>
                <li><a href="pages/bolos.aspx">Bolos</a></li>
                <li><a href="pages/doces.aspx">Doces</a></li>
            </ul>
        </nav>
    </header>

    <main>
            <!-- Slideshow container -->
            <div class="slideshow-container">
                <div id="carouselExampleIndicators" class="carousel slide">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="images/Banner Neidinha Bolos.png" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/teste1.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/teste2.png" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>


        <div class="destaqueContainer">
            <h1>BOLOS DESTAQUES</h1>
            <div class="divDestaque">
                <div class="divCardDestaque">
                    <img src="images/bolo-chocolate.jpg" alt="" />
                    <h2>Bolo de Brigadeiro</h2>
                    <span>R$ 80,00</span>
                </div>
                <div class="divCardDestaque">
                    <img src="images/produto.jpg" alt="" />
                    <h2>Bolo de Bolo</h2>
                    <span>R$ 90,00</span>
                </div>
                <div class="divCardDestaque">
                    <img src="images/brigadeiro-beijinho.jpg" alt="" />
                    <h2>Bolo de Cenoura</h2>
                    <span>R$ 100,00</span>
                </div>
            </div>
        </div>
        <div class="bolos-escritura">
        </div>
        </div>
        <div class="bolos">
            <img src="images/bolo-chocolate.jpg" alt="Imagem de um bolo de Chocolate" />
            <div class="bolos-escritura">
                <h1>Bolo de Chocolate</h1>
                <p>Delicioso bolo de chocolate, Delicioso bolo de chocolate, Delicioso bolo de chocolate.</p>
                <span>R$ 96,99</span>
                <a href="pages/bolos.aspx">Veja nossos bolos: <i class="fa-solid fa-arrow-up-right-from-square"></i></a></p>
                <br />
            </div>
        </div>
        <div class="doces">
            <img src="images/brigadeiro-beijinho.jpg" alt="Imagem de brigadeiros e beijinhos de forma misturada em uma bandeja" />
            <div class="doces-escritura">
                <h1>Doces</h1>
                <p>Delicioso bolo de chocolate, Delicioso bolo de chocolate, Delicioso bolo de chocolate.</p>
                <span>R$ 69,99</span>
                <a href="pages/doces.aspx">Veja nossos doces: <i class="fa-solid fa-arrow-up-right-from-square"></i></a>
                <br />
                <br />
            </div>
        </div>
        <div class="clientes-satisfeitos">
            <h1>CLIENTES SATISFEITOS</h1>
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
        <script>
            let slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                let dots = document.getElementsByClassName("dot");
                if (n > slides.length) { slideIndex = 1 }
                if (n < 1) { slideIndex = slides.length }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }
        </script>

    <script src="https://kit.fontawesome.com/6d057d1912.js" crossorigin="anonymous"></script>
    <script src="js/menu.js"></script>
    <script type="text/javascript" src="js/vanilla-tilt.js"></script>
    <script>VanillaTilt.init(document.querySelectorAll(".divCardDestaque"));</script>





</body>
</html>
