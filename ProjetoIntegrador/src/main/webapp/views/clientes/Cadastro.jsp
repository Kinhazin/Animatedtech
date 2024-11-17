<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/estiloCadastroCliente.css"
	type="text/css">
<title>Cadastro</title>
</head>

<body>
	<header class="cabecalho">
		<div class="cabecalho__Logo">
			<img src='${pageContext.request.contextPath}/includes/LOGOTIPO.png'
				width="90";>
			<p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
		</div>
	</header>
	<main class="meio">
		<div class="cadastro">
			<div class="cadastro__Formulario">

				<h1 class="cadastro__Formulario__Titulo">Criar conta</h1>
				<c:if test="${not empty erro}">
					<p style="color: red;">${erro}</p>
				</c:if>
				<c:if test="${not empty sucesso}">
					<p style="color: green;">${sucesso}</p>
				</c:if>
				<form class="formulario"
					action="${pageContext.request.contextPath}/clientes/Cadastro"
					method="post">
					<label for="nome" class="cadastro__Formulario__label">Nome</label>
					<input type="input" id="nome" name="nome" value="${param.nome}"
						class="cadastro__Formulario__inputs"> <label for="email"
						class="cadastro__Formulario__label">E-mail</label> <input
						type="email" id="email" name="email" value="${param.email}"
						class="cadastro__Formulario__inputs"> <label for="CPF"
						class="cadastro__Formulario__label">CPF</label> <input type="text"
						id="CPF" name="CPF" value="${param.CPF}"
						class="cadastro__Formulario__inputs" maxlength="11"> <label
						for="password" class="cadastro__Formulario__label">Senha</label> <input
						type="text" id="password" name="password"
						value="${param.password}" class="cadastro__Formulario__inputs">
					<label for="passwordConfirm" class="cadastro__Formulario__label">Digite
						a senha novamente</label> <input type="text" id="passwordConfirm"
						name="passwordConfirm" class="cadastro__Formulario__inputs"
						value="${param.passwordConfirm}">

					<button type="submit" class="cadastro__Formulario__botao">Criar
						conta</button>
					<div class="formulario__texto">
						<p class="formulario__texto__termos">
							Ao continuar, você concorda com as <b><u>Condições de Uso</u></b>
							da AnimatedTech. Por favor, verifique a <b><u>Notificação
									de Privacidade</u></b>, <b><u>Notificação de Cookies</u></b> e a <b><u>Notificação
									de Anúncios Baseados em Interesse</u></b>.
						</p>
					</div>
				</form>
			</div>
		</div>
	</main>

	<footer class="rodape">
		<div class="rodape__logos">
			<p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
			<img src='${pageContext.request.contextPath}/includes/LOGO-SENAC.png'
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