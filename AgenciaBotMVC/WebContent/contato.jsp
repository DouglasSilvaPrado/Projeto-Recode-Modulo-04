<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Contato</title>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	
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
              name="Nome"
              class="form-control my-3"
              placeholder="Digite seu nome"
              required=""
            />
            <input
              type="text"
              name="Email"
              class="form-control my-3"
              placeholder="Digite seu Email"
              required=""
            />

            <textarea placeholder="Digite sua Mensagem" rows="4" cols="50" name="message" required="" class="form-control my-3"></textarea>
            <input type="hidden" name ="_captcha" value ="false">
            <input type="hidden" name ="_autoresponse" value ="Mensagem enviada!">
            <input type="hidden" name ="_next" value ="http://localhost:8080/agenda/index.jsp">
            <button class="btn btn-primary form-control my-3">Enviar</button>
          </div>
        </form>
      </div>
      </div>
    </div>
    
    <div class="container my-5">
      <div class="text-center my-5">
        <span>Fale Conosco</span>
      </div>

      <div class="row row-cols-1 row-cols-md-3 g-4 text-center">
        <div class="col">
          <div class="card h-100">
            <i class="bi bi-whatsapp icone"></i>
            <div class="card-body">
              <p class="card-text"> (21) 99999-9999 </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <i class="bi-geo-alt icone"></i>
            <div class="card-body">
              <p class="card-text">Av. Automóvel Clube, 1838 </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <i class="bi-send icone"></i>
            <div class="card-body">
              <p class="card-text">Agencia@gmail.com</p>
            </div>
          </div>
        </div>
      </div>
    </div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>