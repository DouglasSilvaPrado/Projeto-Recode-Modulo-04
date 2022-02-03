<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Editar Viagem</title>

</head>
<body>
<!-- menu -->
    <%@ include file="navbar.jsp" %>
    <!-- main -->
    <div class="container vh-100" align="center">
		<h1>Editar Viagem</h1>
		<form name="frmContato" action="update">
			<table>
				<tr>
					<td><input type="text" name="idcon" id="caixa3" readonly value="<%out.print(request.getAttribute("idcon"));%>"></td>
				</tr>
	
				<tr>
					<td><input type="text" id="origem" name="origem" class="Caixa1" required  value="<%out.print(request.getAttribute("origem"));%>"></td>
				</tr>
				<tr>
					<td><input type="text" d="destino" name="destino" class="Caixa1"  value="<%out.print(request.getAttribute("destino"));%>"></td>
				</tr>
				<tr>
					<td><input type="date" name="data_ida" class="Caixa1" required  value="<%out.print(request.getAttribute("data_ida"));%>"></td>
				</tr>
				<tr>
					<td><input type="date" name="data_volta" class="Caixa1" required  value="<%out.print(request.getAttribute("data_volta"));%>"></td>
				</tr>
				
	
			</table>
			<input type="button" value="Salvar" class="btn btn-primary" onclick="validar()">
		</form>
	</div>
	
	<!-- footer -->
    <%@ include file="footer.jsp" %>
</body>
</html>