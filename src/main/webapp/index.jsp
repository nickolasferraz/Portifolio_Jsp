<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
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
                <li><a href="doe.jsp">Doe</a></li>
                <li><a href="galeria.jsp">Galeria</a></li>
                <li><a href="#contato">Contato</a></li>
                <li><a href="#Depoimento_ ">Depoimentos</a></li>
            </ul>
        </nav>
        <section class="slide_photos">
            <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                  <!-- Slides -->
                  <div class="swiper-slide"><img src="./imgs/images.png"></div>
                  <div class="swiper-slide"><img src="./imgs/WhatsApp-Image-2020-10-01-at-10.31.05-1.jpeg"></div>
                </div>
                <!-- If we need pagination -->
    
                <!-- If we need navigation buttons -->
                <!-- If we need scrollbar -->
                <div class="swiper-scrollbar"></div>
              </div>
        </section>
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
        <script>
                    const swiper = new Swiper('.swiper', {
                    // Optional parameters
                    autoplay:{
                        delay:3000,
                        disableOnInterection:false,

                    },
                    loop: true,

                    // If we need pagination
                    pagination: {
                        el: '.swiper-pagination',
                        clickable:true,
                    },

                    // Navigation arrows
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },

});
        </script>
   <section id_doador=Depoimento_ class="Depoimentos">
    <h1>Depoimentos</h1>
    <div class="cards-container">
        <div class="main_cards">
            <img src="https://midias.correiobraziliense.com.br/_midias/jpg/2021/03/05/675x450/1_cbpfot020320212188-6556336.jpg" alt="Depoimento 1">
            <h2>Maria Oliveira</h2>
            <p>"O Instituto Doses de Amor me acolheu de forma incrível. Sou muito grata pelo suporte que recebi durante o meu tratamento."</p>
        </div>
        <div class="main_cards">
            <img src="https://images02.brasildefato.com.br/cb185bc99754f8c601378510bb3e8ebf.jpeg" alt="Depoimento 2">
            <h2>Ana Silva</h2>
            <p>"A equipe foi muito atenciosa e me ajudou a enfrentar os momentos mais difíceis com força e esperança."</p>
        </div>
        <div class="main_cards">
            <img src="https://i0.wp.com/saudedebate.com.br/wp-content/uploads/2023/06/saude-mulher.png?fit=968%2C643&ssl=1" alt="Depoimento 3">
            <h2>Juliana Souza</h2>
            <p>"O apoio que recebi no hospital foi essencial para minha recuperação. Recomendo o Instituto de olhos fechados!"</p>
        </div>
    </div>
</section>

    <section class="info">
       <iframe loading="lazy" src="https://maps.google.com/maps?q=Alameda%20dos%20L%C3%ADrios%2C%20145%20-%20Parque%20Cecap&amp;t=m&amp;z=12&amp;output=embed&amp;iwloc=near" title="Alameda dos Lírios, 145 - Parque Cecap" aria-label="Alameda dos Lírios, 145 - Parque Cecap"></iframe>
    </section>
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

    </body>
</html>