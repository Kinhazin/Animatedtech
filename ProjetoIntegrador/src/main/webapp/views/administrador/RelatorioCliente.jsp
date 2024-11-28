<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="br.com.animatedtech.modelos.RelatorioAnalitico, java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Relatorio produtos</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styleRelatorioAnalitico.css">
</head>

<body>
	<header class="cabecalho">
		<div class="cabecalho__Logo">
			<img src="${pageContext.request.contextPath}/includes/LOGOTIPO.png"
				height="100%" width="auto">
			<p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
		</div>
	</header>
</body>
<main class="meio">
	<section class="secRelatorio">
		<h1>Relatório de clientes</h1>
		<table class="tabela" border="1">
			<thead>
				<tr>
					<th><b>CLIENTE</b></th>
					<th><b>VALOR</b></th>
				</tr>
				<%
				ArrayList<RelatorioAnalitico> listaRelatorioAnalitico = (ArrayList<RelatorioAnalitico>) request.getAttribute("listaRelatorioAnalitico");
				%>
			</thead>
			<tbody>

				<c:forEach var="relatorioAnalitico"
					items="${listaRelatorioAnalitico}">
					<tr>
						<td>${relatorioAnalitico.nome}</td>
						<td>${relatorioAnalitico.valor}</td>
				</c:forEach>
			</tbody>
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
			08.508.508/5085-08 | Todos os direitos reservados.<br> Os preços
			anunciados neste site ou via e-mail promocional podem ser alterados
			sem prévio aviso. O AnimatedTech! não é responsável por erros
			descritivos. As fotos contidas nesta página são meramente
			ilustrativas do produto e podem variar de acordo com o fornecedor/<br>lote
			do fabricante. 
		</p>
	</div>
</footer>

</html>