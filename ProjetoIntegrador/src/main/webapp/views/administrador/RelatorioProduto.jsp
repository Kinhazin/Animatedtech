<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="br.com.animatedtech.modelos.RelatorioSintetico, java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Relatório de produtos</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styleRelatorioSintetico.css">
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
		<form class="secFormulario" action="${pageContext.request.contextPath}/administrador/relatoriosintetico" method="post">

			<h1>Relatório de sintetico</h1>
			<div class="datas">
				<p>Data:</p>
				<div class="date">
					<input type="date" id="comeco" name="comeco">
					<p id="a">até</p>
					<input type="date" id="fim" name="fim">
				</div>
			</div>
			<table border="1">
				<thead>
					<tr>
						<th>Cliente</th>
						<th>ID Produto</th>
						<th>Data</th>
						<th>Valor</th>
					</tr>
					<%
				ArrayList<RelatorioSintetico> relatorioLista = (ArrayList<RelatorioSintetico>) request.getAttribute("relatorioLista");
				%>

				</thead>
				<tbody>

					<c:forEach var="relatoriosintetico" items="${relatorioLista}">
						<tr>
							<td>${relatoriosintetico.nomeCliente}</td>
							<td>${relatoriosintetico.idProduto}</td>
							<td>${relatoriosintetico.dataVenda}</td>
							<td>${relatoriosintetico.valorUnitario}</td>
					</c:forEach>
					<!-- 
					<td colspan="2"><b>Total</b></td>
					<td>R$ 50.550,90</td>
					</tr>
					 -->
				</tbody>
			</table>
			<button type="submit" class="imprimir">Gerar relatório</button>
		</form>
		<section class="imagem">
			<img class="girassol"
				src="${pageContext.request.contextPath}/includes/GIF-GIRASSOL.gif">
			<img class="vaso"
				src="${pageContext.request.contextPath}/includes/VASO.png">
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