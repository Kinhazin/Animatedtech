<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<%@ page
	import="br.com.animatedtech.modelos.Produto, java.util.ArrayList"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produtos Cadastrados</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleCrudProdutos.css">
</head>

<body>
    <header class="cabecalho">
        <div class="cabecalho__Logo">
            <img src="${pageContext.request.contextPath}/includes/LOGOTIPO.png" width="90" ;>
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
        </div>
    </header>
    <main class="meio">
        
        <section class="meio_tabela">
            <img class="batman" src="${pageContext.request.contextPath}/includes/CADASTRO-PRODUTOS_BATMAN.png" height="250px" width="auto">
            <table class="tabela_crud">
                <thead>
                    <tr>
                        <th>CÓDIGO DO PRODUTO</th>
                        <th>NOME DO PRODUTO</th>
                        <th>QUANTIDADE</th>
                        <th>PREÇO</th>
                        <th>AÇÃO</th>
                    </tr>
                    <%
				ArrayList<Produto> listaProduto = (ArrayList<Produto>) request.getAttribute("listaProduto");
				%>
                </thead>
                <c:forEach var="produto" items="${listaProduto}">
					<tr>
						<td>${produto.codigoProduto}</td>
						<td>${produto.nomeProduto}</td>
						<td>${produto.quantidadeEstoque}</td>
						<td>${produto.precoUnidade}</td>
						<td class="imgs"><img
							src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png"
							height="25px" width="auto"> <img
							src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png"
							height="25px" width="auto"></td>
					</tr>
				</c:forEach>
  
            </table>
        </section>
    </main>

    <footer class="rodape">
        <div class="rodape__logos">
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
            <img src="${pageContext.request.contextPath}/includes/LOGO-SENAC.png" width="90" ;>
        </div>
        <div class="rodape__logos__textos">
            <p class="textinhos">AnimatedTech!® é uma marca ficticia de alunos SENAC | CNPJ: 08.508.508/5085-08 | Todos
                os direitos
                reservados.<br>
                Os preços anunciados neste site ou via e-mail promocional podem ser alterados sem prévio aviso. O
                AnimatedTech! não é responsável por erros descritivos. As fotos contidas nesta página são meramente
                ilustrativas do produto e podem variar de acordo com o fornecedor/<br>lote do fabricante. </p>
        </div>
    </footer>
</body>
</html>