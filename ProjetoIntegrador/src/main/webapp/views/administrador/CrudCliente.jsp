<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="br.com.animatedtech.modelos.Cliente, java.util.ArrayList"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Clientes Cadastrados</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styleCrudCliente.css">
</head>

<body>

	<header class="cabecalho">
		<div class="cabecalho__Logo">
			<img src="${pageContext.request.contextPath}/includes/LOGOTIPO.png"
				height="100%" width="auto">
			<p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
		</div>
	</header>
	<main class="meio">
		<section class="meio_tabela">
			<table border="1px">
				<tr>
					<th id="id">ID CLIENTE</th>
					<th id="nome">NOME</th>
					<th id="cpf">CPF</th>
					<th id="endereco">E-MAIL</th>
					<th id="acao">AÇÃO</th>
				</tr>
				<%
				ArrayList<Cliente> listaClientes = (ArrayList<Cliente>) request.getAttribute("listaClientes");
				%>
				<c:forEach var="cliente" items="${listaClientes}">
					<tr>
						<td>${cliente.idCliente}</td>
						<td>${cliente.nome}</td>
						<td>${cliente.cpf}</td>
						<td>${cliente.email}</td>
						<td class="imgs">
						<a href="${pageContext.request.contextPath}/clientes/editar?id=${cliente.idCliente}">
						<img
							src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png"
							height="25px" width="auto"> 
							</a>
							<a href="${pageContext.request.contextPath}/clientes/excluir?id=${cliente.idCliente}"><img
							src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png"
							height="25px" width="auto"></a></td>
					</tr>
				</c:forEach>
			</table>
		</section>

	</main>


	<footer class="rodape">
		<div class="rodape__logos">
			<p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
			<img src="${pageContext.request.contextPath}/includes/LOGO-SENAC.png"
				width="90";>
		</div>
		<div class="rodape__logos__textos">
			<p class="textinhos">
				AnimatedTech!® é uma marca ficticia de alunos SENAC | CNPJ:
				08.508.508/5085-08 | Todos os direitos reservados.<br> Os
				preços anunciados neste site ou via e-mail promocional podem ser
				alterados sem prévio aviso. O AnimatedTech! não é responsável por
				erros descritivos. As fotos contidas nesta página são meramente
				ilustrativas do produto e podem variar de acordo com o fornecedor/<br>lote
				do fabricante. 
			</p>
		</div>
	</footer>
</body>
</html>