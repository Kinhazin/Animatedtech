<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatório de produtos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleRelatorioProduto.css">
</head>

<body>
    <header class="cabecalho">
        <div class="cabecalho__Logo">
            <img src="${pageContext.request.contextPath}/includes/LOGOTIPO.png" height="100%" width="auto">
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
        </div>
    </header>
    <main class="meio">
        <section class="secFormulario">
            <h1>Relatório de produtos</h1>
            <div class="datas">
                <p>Data:</p>
                <div class="date">
                    <input type="date" id="comeco">
                    <p id="a">até</p>
                    <input type="date" id="fim">
                </div>
            </div>
            <table border="1">
                <thead>
                    <tr>
                        <th>Produto</th>
                        <th>Quantidade vendida</th>
                        <th>Valor</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Produto A</td>
                        <td>16</td>
                        <td>R$ 1.000,00</td>
                    </tr>
                    <tr>
                        <td>Produto B</td>
                        <td>14</td>
                        <td>R$ 3.000,00</td>
                    </tr>
                    <tr>
                        <td>Produto C</td>
                        <td>13</td>
                        <td>R$ 1.500,00</td>
                    </tr>
                    <tr>
                        <td>Produto D</td>
                        <td>02</td>
                        <td>R$ 300,00</td>
                    </tr>
                    <tr>
                        <td>Produto E</td>
                        <td>01</td>
                        <td>R$ 250,00</td>
                    </tr>
                    <tr>
                        <td>Produto F</td>
                        <td>06</td>
                        <td>R$ 100,00</td>
                    </tr>
                    <tr>
                        <td>Produto G</td>
                        <td>10</td>
                        <td>R$ 500,00</td>
                    </tr>
                    <tr>
                        <td>Produto H</td>
                        <td>09</td>
                        <td>R$ 50,00</td>
                    </tr>
                    <tr>
                        <td>Produto I</td>
                        <td>05</td>
                        <td>R$ 3.050,00</td>
                    </tr>
                    <tr>
                        <td>Produto J</td>
                        <td>02</td>
                        <td>R$ 1.250,00</td>
                    </tr>
                    <tr>
                        <td>Produto K</td>
                        <td>05</td>
                        <td>R$ 1.999,00</td>
                    </tr>
                    <tr>
                        <td colspan="2"><b>Total</b></td>
                        <td>R$ 50.550,90</td>
                    </tr>
                </tbody>
            </table>
            <button type="submit" class="imprimir">Imprimir</button>
        </section>
        <section class="imagem">
            <img class="girassol" src="${pageContext.request.contextPath}/includes/GIF-GIRASSOL.gif">
            <img class="vaso" src="${pageContext.request.contextPath}/includes/VASO.png">
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