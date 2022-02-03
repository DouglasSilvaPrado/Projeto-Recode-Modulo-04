<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Nova Pessoa</title>
</head>
  <body>
  
   <%@ include file="navbar.jsp" %>
  
	<!-- main -->
    <div class="container vh-100" align="center">
      <h1>Nova Pessoa</h1>
      <form name="frmContato2" action="insertPessoa" class="form-group">
        <table>
          <tr>
            <td>
              <input
                type="text"
                name="nome"
                placeholder="Nome"
                class="Caixa1 form-control"
                required
              />
            </td>
          </tr>
          <tr>
            <td>
              <input
                type="text"
                name="cpf"
                placeholder="CPF"
                class="Caixa1 form-control"
              />
            </td>
          </tr>
          <tr>
            <td><input type="text" name="telefone" placeholder="Telefone" class="Caixa1 form-control" /></td>
          </tr>
          
        </table>
        <input
          type="button"
          value="Adicionar"
          class="btn btn-primary"
          onclick="validar2()"
        />
      </form>
    </div>
    
    <!-- footer -->
    <%@ include file="footer.jsp" %>
    
  </body>
</html>
