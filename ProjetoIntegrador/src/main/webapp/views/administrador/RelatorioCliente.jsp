<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatorio produtos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleRelatorioCliente.css">
</head>

<body>
    <header class="cabecalho">
        <div class="cabecalho__Logo">
            <img src="${pageContext.request.contextPath}/includes/LOGOTIPO.png" height="100%" width="auto">
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
        </div>
    </header>
</body>
<main class="meio">
    <section class="secRelatorio">
        <h1>Relatório de clientes</h1>
        <input type="date">
        <table class="tabela" border="1">
            <thead>
                <tr>
                    <th><b>CLIENTE</b></th>
                    <th><b>VALOR</b></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Michael Jackson</td>
                    <td>R$ 1.000,00</td>
                </tr>
                <tr>
                    <td>Xicrinho Maia</td>
                    <td>R$ 3.000,00</td>
                </tr>
                <tr>
                    <td>Tinhoso</td>
                    <td>R$ 1.500,00</td>
                </tr>
                <tr>
                    <td>Caneco Martins</td>
                    <td>R$ 300,00</td>
                </tr>
                <tr>
                    <td>Rei leão</td>
                    <td>R$ 250,00</td>
                </tr>
                <tr>
                    <td>Bojack Horseman</td>
                    <td>R$ 100,00</td>
                </tr>
                <tr>
                    <td>Gru</td>
                    <td>R$ 500,00</td>
                </tr>
                <tr>
                    <td>Ben 10</td>
                    <td>R$ 50,00</td>
                </tr>
                <tr>
                    <td>Jasmine</td>
                    <td>R$ 3.050,00</td>
                </tr>
                <tr>
                    <td>Alladin</td>
                    <td>R$ 1.250,00</td>
                </tr>
                <tr>
                    <td>Finn</td>
                    <td>R$ 1.999,00</td>
                </tr>
            </tbody>
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

</html>