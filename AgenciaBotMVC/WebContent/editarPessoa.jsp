<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Editar Pessoa</title>

</head>
<body>

	<%@ include file="navbar.jsp" %>
	
    <!-- main -->
    <div class="container vh-100" align="center">
		<h1>Editar Pessoa</h1>
		<form name="frmContato2" action="updatePessoa">
			<table>
				<tr>
					<td><input type="text" name="idcon" id="caixa3" readonly value="<%out.print(request.getAttribute("idcon"));%>"></td>
				</tr>
	
				<tr>
					<td><input type="text" name="nome" class="Caixa1" required  value="<%out.print(request.getAttribute("nome"));%>"></td>
				</tr>
				<tr>
					<td><input type="text" name="cpf" class="Caixa1"  value="<%out.print(request.getAttribute("cpf"));%>"></td>
				</tr>
				<tr>
					<td><input type="text" name="telefone" class="Caixa1" required  value="<%out.print(request.getAttribute("telefone"));%>"></td>
				</tr>
				
				
	
			</table>
			<input type="button" value="Salvar" class="btn btn-primary" onclick="validar2()">
		</form>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>