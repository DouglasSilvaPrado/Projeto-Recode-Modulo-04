<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.Viagem"%>
<%@ page import="java.util.ArrayList"%>
<%

	ArrayList<Viagem> lista = (ArrayList<Viagem>) request.getAttribute("viagens");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Viagens</title>
</head>
<body>
	
	<%@ include file="navbar.jsp" %>
	<!-- main -->
	<div class="container vh-100" align="center">
		<h1>Viagens</h1>
		<a href="novo.jsp" class="btn btn-primary">Nova Viagem</a>
		<a href="report" class="btn btn-danger">Relatótio</a> 
		<p></p>
		
		<table id="tabela" class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Origem</th>
					<th scope="col">Destino</th>
					<th scope="col">Data de Ida</th>
					<th scope="col">Data de Volta</th>
					<th scope="col">Opções</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < lista.size(); i++) {
				%>
				<tr>
					<td><%=lista.get(i).getIdcon()%></td>
					<td><%=lista.get(i).getOrigem()%></td>
					<td><%=lista.get(i).getDestino()%></td>
					<td><%=lista.get(i).getData_ida()%></td>
					<td><%=lista.get(i).getData_volta()%></td>
					<td>
						<a href="select?idcon=<%=lista.get(i).getIdcon() %>" class="btn btn-primary mb-1">Editar</a>
						<a href="javascript: confirmar(<%=lista.get(i).getIdcon() %>)" class="btn btn-danger mb-1">Excluir</a>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>