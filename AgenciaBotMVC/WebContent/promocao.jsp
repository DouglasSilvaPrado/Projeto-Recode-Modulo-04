<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Promoções</title>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	
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
	
	<%@ include file="footer.jsp" %>

</body>
</html>