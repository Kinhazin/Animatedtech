<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styleCadastroProdutos.css">
<title>Cadastro de produtos</title>
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
		<section class="cadastroProdutos">

			<div class="CadastroProdutos__div">
				<div class="formulario__div">
					<form class="formulario"
						action="${pageContext.request.contextPath}/produtos/updates"
						method="post">
						<h1>CADASTRO DE PRODUTOS</h1>
						<div class="L1">
							<div class="div1">
								<label for="fornecedor">Fornecedor</label> <input type="text"
									id="fornecedor" name="fornecedor"
									placeholder="Fornecedor do produto"
									value="${produto.nomeFornecedor}">
							</div>
							<div class="div2">
								<label for="nome-produto">Nome do produto</label> <input
									type="text" id="nomeProduto" name="nomeProduto"
									value="${produto.nomeProduto}">
							</div>
						</div>
						<div class="L2">
							<label for="codigo-produto">Código do produto</label> <input
								type="text" id="codigoProduto" name="codigoProduto"
								placeholder="Título do produto" value="${produto.codigoProduto}">
						</div>
						<div class="div2">
							<label for="descricao">Descrição</label>
							<textarea maxlength="195" id="descricao" name="descricao"
								rows="4" placeholder="Detalhe o produto">${produto.descricao}</textarea>
						</div>
						<div class="L2">
							<label for="preco-unitario">Preço Unitário</label> <input
								type="number" id="preco-unitario" name="precoUnitario"
								placeholder="Preço unitário" value="${produto.precoUnidade}">
						</div>
						<div class="L2">
							<label for="quantidade">Quantidade em estoque</label> <input
								type="number" id="quantidade" name="quantidade"
								placeholder="Quantidade em estoque"
								value="${produto.quantidadeEstoque}">
						</div>
						<input type="hidden" name="id" value="${produto.idProduto}">
						<div class="botoes">
							<button type="reset" class="login__formulario__botao">
								<b>Cancelar</b>
							</button>
							<button type="submit" class="login__formulario__botao">
								<b>Atualizar produto</b>
							</button>
						</div>
					</form>

				</div>
				<div class="img1"></div>
			</div>
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