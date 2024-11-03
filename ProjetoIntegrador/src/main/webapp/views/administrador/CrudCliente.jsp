<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatorio produtos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleCrudCliente.css">
</head>

<body>
    <header class="cabecalho">
        <div class="cabecalho__Logo">
            <img src="${pageContext.request.contextPath}/includes/LOGOTIPO.png" height="100%" width="auto">
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
        </div>
    </header>
    <main class="meio">
        <section class="meio_tabela">
            <table border="1px">
                <tr>
                    <th id="nome">NOME</th>
                    <th id="cpf">CPF</th>
                    <th id="endereco">ENDEREÇO</th>
                    <th id="telefone">TELEFONE</th>
                    <th id="acao">AÇÃO</th>
                </tr>
                <tr>
                    <td>LUCAS MARTINS SANTANA</td>
                    <td>477.097.402-65</td>
                    <td>Rua Alba 1180, Parque Jabaquara<br>
                        Mansão Maromba - CEP: 04370-105</td>
                    <td>(11) 4002-8922</td>
                    <td class="imgs">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png" height="25px" width="auto">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png" height="25px" width="auto">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><br></td>
                    <td></td>
                    <td class="imgs">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png" height="25px" width="auto">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png" height="25px" width="auto">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><br></td>
                    <td></td>
                    <td class="imgs">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png" height="25px" width="auto">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png" height="25px" width="auto">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><br></td>
                    <td></td>
                    <td class="imgs">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LAPIS.png" height="25px" width="auto">
                        <img src="${pageContext.request.contextPath}/includes/CRUD_LIXO.png" height="25px" width="auto">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><br></td>
                    <td></td>
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