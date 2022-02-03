<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.Pessoa"%>
<%@ page import="java.util.ArrayList"%>
<%
	ArrayList<Pessoa> lista = (ArrayList<Pessoa>) request.getAttribute("pessoas");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Pessoas</title>

</head>
<body>

	<%@ include file="navbar.jsp" %>
	
	<!-- main -->
	<div class="container vh-100" align="center">
		<h1>Pessoas</h1>
		<a href="novaPessoa.jsp" class="btn btn-primary mb-5">Nova Pessoa</a>
		
		<table id="tabela" class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Nome</th>
					<th scope="col">CPF</th>
					<th scope="col">Telefone</th>
					<th scope="col">Opções</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < lista.size(); i++) {
				%>
				<tr>
					<td><%=lista.get(i).getIdcon()%></td>
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getCpf()%></td>
					<td><%=lista.get(i).getTelefone()%></td>
					<td>
						<a href="selectPessoa?idcon=<%=lista.get(i).getIdcon() %>" class="btn btn-primary mb-1">Editar</a>
						<a href="javascript: confirmar2(<%=lista.get(i).getIdcon() %>)" class="btn btn-danger mb-1">Excluir</a>
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