<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styleAcessoAdm.css">
<title>Acesso administrativo</title>
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
		<section class="selecao">
			<a target="_blank" href="../administrador/CadastroProdutos.jsp"><div
					class="selecaoDiv1">
					<div class="img"></div>
					<p>Cadastrar</p>
				</div></a> <a target="_blank" href="${pageContext.request.contextPath}/clientes/relatorio"><div
					class="selecaoDiv2">
					<div class="img"></div>
					<p>Relatorio analitico</p>
				</div></a> <a target="_blank" href="../administrador/RelatorioProduto.jsp"><div
					class="selecaoDiv3">
					<div class="img"></div>
					<p>Relatório sintetico</p>
				</div></a> </a>
		</section>
		<section class="selecao">
			<a target="_blank" href="clientes/listar"><div
					class="selecaoDiv4">
					<div class="img"></div>
					<p>Crud Clientes</p>
				</div></a> <a target="_blank" href="produtos/listar"><div
					class="selecaoDiv5">
					<div class="img"></div>
					<p>Crud Produtos</p>
				</div></a>
				  <a target="_blank" href="../notafiscal/CadastrarNota.jsp"><div class="selecaoDiv6">
                <div class="img"></div>
                <p>Cadastrar nota</p>
            </div></a>
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