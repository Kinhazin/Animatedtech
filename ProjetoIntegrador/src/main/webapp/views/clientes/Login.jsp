<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/estiloLoginnCliente.css"
	type="text/css">

<title>Login</title>
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
		<div class="login">
			<div class="login__formulario">
				<h1 class="login__formulario__titulo">Fazer login</h1>
				<form class="formulario" action="validaLogin.jsp" method="post">
					<label for="email" class="login__formulario__label">E-mail</label>
					<input type="email" id="email" name="email"
						class="login__formulario__input"> <label for="password"
						class="login__formulario__label">Senha</label> <input
						type="password" id="password" name="password"
						class="login__formulario__input">
						
					<%
					String errorMessage = (String) request.getAttribute("errorMessage");
					if (errorMessage != null) {
						out.println("<p style='color:red;'>" + errorMessage + "</p>");
					}
					%>
							
					<button type="submit" class="login__formulario__botao">Entrar</button>
					<div class="login__formulario__textos">
						<p class="login__formulario__termos">
							Ao continuar, você concorda com as <b><u>Condições de Uso</u></b>
							da AnimatedTech. Por favor, verifique a <b><u>Notificação
									de Privacidade</u></b>, <b><u>Notificação de Cookies</u></b> e a <b><u>Notificação
									de Anúncios Baseados em Interesse</u></b>.
						</p>
						<a href="#" class="login__formulario__esqueceuSenha">Esqueceu
							a senha?</a>
					</div>
				</form>
			</div>
		</div>
		<a href="CadastroCliente.jsp" class="criarConta">Criar sua conta na
			AnimatedTech</a>
	</main>
	<footer class="rodape">
		<div class="rodape__logos">
			<p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
			<img src="${pageContext.request.contextPath}/includes/LOGO-SENAC.png"
				width="90">
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