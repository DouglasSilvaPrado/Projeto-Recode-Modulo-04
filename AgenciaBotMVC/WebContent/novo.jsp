<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Nova Viagem</title>
</head>
  <body>
  
   <%@ include file="navbar.jsp" %>
    
	<!-- main -->
    <div class="container vh-100" align="center">
      <h1>Agendar nova viagem</h1>
      <form name="frmContato" action="insert" class="form-group">
        <table>
          <tr>
            <td>
              <input
                type="text"
                id="origem"
                name="origem"
                placeholder="Origem"
                class="Caixa1 form-control"
                required
              />
            </td>
          </tr>
          <tr>
            <td>
              <input
                type="text"
                id="destino"
                name="destino"
                placeholder="Destino"
                class="Caixa1 form-control"
              />
            </td>
          </tr>
          <tr>
            <td><input type="date" name="data_ida" class="Caixa1 form-control" /></td>
          </tr>
          <tr>
            <td><input type="date" name="data_volta" class="Caixa1 form-control" /></td>
          </tr>
        </table>
        <input
          type="button"
          value="Adicionar"
          class="btn btn-primary"
          onclick="validar()"
        />
        
        
      </form>
    </div>
    
  <%@ include file="footer.jsp" %>
  </body>
</html>
