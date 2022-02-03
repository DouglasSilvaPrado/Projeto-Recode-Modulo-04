<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Agencia de Viagem</title>
</head>
<body>

	<%@ include file="navbar.jsp" %>
	
    <!-- slider -->
    <div class="container-fluid" id="slider">
      <div
        id="carouselExampleIndicators"
        class="carousel slide my-3"
        data-bs-ride="carousel"
      >
        <div class="carousel-indicators">
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="0"
            class="active"
            aria-current="true"
            aria-label="Slide 1"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="1"
            aria-label="Slide 2"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="2"
            aria-label="Slide 3"
          ></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="img/slide1.png" class="d-block w-100" alt="..." />
          </div>
          <div class="carousel-item">
            <img src="img/slide2.png" class="d-block w-100" alt="..." />
          </div>
          <div class="carousel-item">
            <img src="img/slide3.png" class="d-block w-100" alt="..." />
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#carouselExampleIndicators"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#carouselExampleIndicators"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>

    <!-- destino -->
    <div class="container" id="destino">
      <h2 class="primary-color display-6 text-center fw-bold my-5">
        Qual seu próximo destino?
      </h2>
      <div class="row">
        <div class="col-sm-12 col-md-5 col-xl-4 my-auto">
          <h3 class="secondary-color h1">
            Vamos fazer um tour
            <span class="primary-color">Descubra a beleza</span>
          </h3>
          <form name="frmContato" action="insert">
            <div class="form-group">
              <input
                type="text"
                name="origem"
                class="form-control my-3"
                placeholder="De Onde"
                required=""
              />
              <input
                type="text"
                name="destino"
                class="form-control my-3"
                placeholder="Para Onde"
                required=""
              />
              <input type="date" name="data_ida" class="form-control my-3" required="" />
              <input type="date" name="data_volta" class="form-control my-3" required=""/>
              <input type="button" class="btn btn-primary my-3 form-control" value="Agendar" onclick="validar()">
              <a href="Destino.html"><input type="button" class="btn btn-primary my-3 form-control" value="Melhores Destino"></a>
            </div>
          </form>
        </div>

        <div class="col-sm-12 col-md-7 col-xl-8 my-auto">
          <img
            src="img/destino.png"
            class="img-fluid"
            alt="pessoa sentanda no pier olhando a vista"
          />
        </div>
      </div>
    </div>

    <!-- Promoçoes -->
    <div class="container"  id="promo">
      <h2 class="primary-color display-6 text-center fw-bold my-5">
        Promoções para sua viagem
      </h2>

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <div class="col">
          <div class="card h-100">
            <img src="img/maldives.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">
                Mermaid Beach Resort: A maneira mais alegre de passar suas
                férias
              </h5>
              <p class="card-text">📍maldivas 📅 4 dias</p>
              <p class="card-text"><strike>200</strike></p>
              <p class="card-text primary-color h2">
                $ 175 <span class="secondary-color fs-6">/por pessoa</span>
              </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <img src="img/cinnamon.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">
                Desfrute de um cruzeiro romântico no lado ensolarado da vida
              </h5>
              <p class="card-text">📍cinnamon 📅4 dias</p>
              <p class="card-text"><strike>300</strike></p>
              <p class="card-text primary-color h2">
                $ 250 <span class="secondary-color fs-6">/por pessoa</span>
              </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <img src="img/dhigu.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">
                Mermaid Beach Resort: A maneira mais alegre de passar suas
                férias
              </h5>
              <p class="card-text">📍maldivas 📅4 dias</p>
              <p class="card-text"><strike>200</strike></p>
              <p class="card-text primary-color h2">
                $ 175 <span class="secondary-color fs-6">/por pessoa</span>
              </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <img src="img/rio.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">Rio de Janeiro</h5>
              <p class="card-text">📅18 dias</p>
              <p class="card-text"><strike>500</strike></p>
              <p class="card-text primary-color h2">
                R$ 474 <span class="secondary-color fs-6">/por pessoa</span>
              </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <img src="img/Florianopolis.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">Florianópolis</h5>
              <p class="card-text">📅20 dias</p>
              <p class="card-text"><strike>850</strike></p>
              <p class="card-text primary-color h2">
                R$ 700 <span class="secondary-color fs-6">/por pessoa</span>
              </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <img src="img/Fortaleza.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">Fortaleza</h5>
              <p class="card-text">📅8 dias</p>
              <p class="card-text"><strike>675</strike></p>
              <p class="card-text primary-color h2">
                R$ 600<span class="secondary-color fs-6">/por pessoa</span>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- contatos -->
    <div class="container" id="contato">
      <h2 class="primary-color display-6 text-center fw-bold my-5">
        Entre em contato
      </h2>
      <div>
        <form action="https://formsubmit.co/douglassilvadaprado@gmail.com" method="POST">
          <div class="form-group w-50 mx-auto">
            <input
              type="text"
              class="form-control my-3"
              placeholder="Digite seu nome"
              required=""
            />
            <input
              type="text"
              class="form-control my-3"
              placeholder="Digite seu Email"
              required=""
            />

            <textarea placeholder="Digite sua Mensagem" rows="4" cols="50" name="message" required="" class="form-control my-3"></textarea>
            <input type = "hidden" name = "_ captcha" value = "false">
            <input type = "hidden" name = "_ autoresponse" value = "Mensagem enviada!">
            <input type = "hidden" name = "_ next" value = "index.html">
            <button class="btn btn-primary form-control my-3">Enviar</button>
          </div>
        </form>
      </div>
      </div>
    </div>

	<%@ include file="footer.jsp" %>

</body>
</html>