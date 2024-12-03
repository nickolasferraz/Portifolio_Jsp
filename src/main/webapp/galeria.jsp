<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en"></html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link
        rel="stylesheet"
             href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
        />
        <title>Document</title>
    </head>
    <body>
        <nav class="nav">
            <a href="index.jsp">
                <img src="./imgs/logo-doses-de-amor-1.webp" alt="Logo do site">
            </a>
            <ul>
                <li><a  href="doe.jsp">Doe</a></li>
                <li><a href="galeria.jsp">Galeria</a></li>
                <li><a href="#contato">Contato</a></li>
                <li><a href="#Depoimento_ ">Depoimentos</a></li>
            </ul>
        </nav>
        <section id_doador="galeria" class="galeria">
            <h1>Galeria</h1>
            <div class="gallery-container">
                <div class="gallery-item">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnqoC9W-OWDfJ1iB52BKcdvrKnbZpzRUJ3hQ&s" alt="Imagem 1">
                </div>
                <div class="gallery-item">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmm2cnEkubJ_iL8BUALHjx0YYWuZELwywp3Jb3joE1ozbQipkZC2zOAVVTOY0KZ6iNxhI&usqp=CAU" alt="Imagem 2">
                </div>
                <div class="gallery-item">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtIgtNrdNeDJZ-ugCqUm23hJtxPeeIXtkqbpegKnzm7hcVySafwkruZWXsXS8ADAwgYAk&usqp=CAU" alt="Imagem 3">
                </div>
                <div class="gallery-item">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWbTpZpo0_Xjc0KbBSB_Z_NGvrM-sPzEsp9w&s" alt="Imagem 4">
                </div>
                <!-- Adicione mais itens da galeria conforme necessário -->
            </div>
        
            <!-- Modal para visualização em tela cheia -->
            <div id_doador="modal" class="modal">
                <span class="close">&times;</span>
                <img class="modal-content" id_doador="imgModal">
                <div id_doador="caption"></div>
            </div>
        </section>
        

        <footer id_doador="contato">
            <section>
                <h1>Sobre nós</h1>
            <p>
                Nosso trabalho é de acolhimento às mulheres em tratamento oncológico, virtualmente e presencial nos hospitais.
            </p>
            </section>
            <section>
                <ul>
                    <li>
                        <a href="https://www.instagram.com/institutodosesdeamor">
                            <img src="./imgs/v982-d3-04.jpg" alt="Instituto Doses de Amor - Instagram" />
                        </a>
                    </li>    
                    <li><a href="https://www.facebook.com/livrodosedeamormarta/"><img src="https://e7.pngegg.com/pngimages/991/568/png-clipart-facebook-logo-computer-icons-facebook-logo-facebook-thumbnail.png" alt="" srcset=""></li></a>
                    <li><a href="https://youtube.com/@institutodosesdeamor8738"><img src="https://w7.pngwing.com/pngs/936/468/png-transparent-youtube-logo-youtube-logo-computer-icons-subscribe-angle-rectangle-airplane-thumbnail.png" alt="" srcset=""></li></a>
                </ul>
            </section>
    
    
        </footer>
        <script>
            const modal = document.getElementById('modal');
            const modalImg = document.getElementById('imgModal');
            const captionText = document.getElementById('caption');
            const closeBtn = document.getElementsByClassName('close')[0];
        
            document.querySelectorAll('.gallery-item img').forEach(img => {
                img.onclick = function() {
                    modal.style.display = "block";
                    modalImg.src = this.src;
                    captionText.innerHTML = this.alt;
                }
            });
        
            closeBtn.onclick = function() {
                modal.style.display = "none";
            }
        </script>
        
    
        </body>