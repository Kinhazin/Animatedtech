<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatorio produtos</title>
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
                        <th>ID DO PRODUTO</th>
                        <th>NOME</th>
                        <th>QUANTIDADE</th>
                        <th>PREÇO</th>
                        <th>AÇÃO</th>
                    </tr>
                </thead>
                <tr>
                    <td>#12354</td>
                    <td>PC GAMER</td>
                    <td>50</td>
                    <td>R$5.000,00</td>
                    <td class="imgs">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png" height="25px" width="auto">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png" height="25px" width="auto">
                    </td>
                </tr>
                <tr>
                    <td>#12354</td>
                    <td>PC GAMER</td>
                    <td>50</td>
                    <td>R$5.000,00</td>
                    <td class="imgs">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png" height="25px" width="auto">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png" height="25px" width="auto">
                    </td>
                </tr>
                <tr>
                    <td>#12354</td>
                    <td>PC GAMER</td>
                    <td>50</td>
                    <td>R$5.000,00</td>
                    <td class="imgs">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png" height="25px" width="auto">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png" height="25px" width="auto">
                    </td>
                </tr>
                <tr>
                    <td>#12354</td>
                    <td>PC GAMER</td>
                    <td>50</td>
                    <td>R$5.000,00</td>
                    <td class="imgs">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png" height="25px" width="auto">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png" height="25px" width="auto">
                    </td>
                </tr>
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