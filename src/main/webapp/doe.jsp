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
        <section id="doacao" class="doacao-form">
            <h1>Faça uma Doação</h1>
            <p>Preencha o formulário abaixo para gerar um boleto para doação.</p>
            <form action="enviar-boleto.php" method="POST">
                <div>
                    <label for="nome">Nome completo:</label>
                    <input type="text" id="nome" name="nome" required placeholder="Seu nome completo" class="inputs required" oninput="namevalide()">
                    <span class="span-requeride">Nome dever ter ao menos três caracteres</span>
                </div>
        
                <div>
                    <label for="email">E-mail:</label>
                    <input type="email" id="email" name="email" required placeholder="Seu melhor e-mail"  class="inputs required" oninput="emailvalide()">
                    <span class="span-requeride">Digite um email valido</span>
                </div>
        
                <div>
                    <label for="valor">Valor da Doação (R$):</label>
                    <input type="number" id="valor" name="valor" required min="10" step="0.01" placeholder="Ex: 100.00"  class="inputs required" oninput="valorvalide()">
                    <span class="span-requeride">O valor tem que ser maior que 0</span>
                </div>
        
                <div>
                    <label for="mensagem">Mensagem (opcional):</label>
                    <textarea id="mensagem" name="mensagem" rows="4" placeholder="Deixe uma mensagem, se desejar"></textarea>
                </div>
        
                <div>
                    <button type="submit">Gerar Boleto</button>
                </div>
            </form>
        </section>
        
            <!-- Modal para visualização em tela cheia -->
            <div id="modal" class="modal">
                <span class="close">&times;</span>
                <img class="modal-content" id="imgModal">
                <div id="caption"></div>
            </div>
        </section>
        

        <footer id="contato">
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
        <script src="./js/script.js"></script>
        </body>