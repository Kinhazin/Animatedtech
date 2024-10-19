<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleCarrinhoCompra.css">
    <title>Carrinho</title>
</head>

<body>
    <header class="cabecalho">
        <section class="cabecalho_sec">
            <input type="text" maxlength="50" placeholder="DIGITE O PRODUTO QUE DESEJA COMPRAR">
            <div class="cabecalho_sec_links">
                <a href="${pageContext.request.contextPath}/views/produtos/TelaPrincipal.jsp" class="compras-link">
                    <img src="${pageContext.request.contextPath}/includes/LOJA.png" height="50px">
                    <b>Compras</b>
                </a>
                <div class="cabecalho_sec_links__grupo">
                    <a href="${pageContext.request.contextPath}/views/produtos/FaleConosco.jsp">
                        <img src="${pageContext.request.contextPath}/includes/ENTRE_EM_CONTATO.png" height="35px">
                        <span>
                            <div>
                                <b>Atendimento</b>
                            </div>
                        </span>
                    </a>
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/includes/SOBRE_NOS.png" height="35px">
                        <span>
                            <div>
                                <b>Sobre nós</b>
                            </div>
                        </span>
                    </a>
                </div>
            </div>
        </section>
    </header>
    <main class="meio">
        <section class="meio_carrinho">
            <div class="meio_carrinho_produto">
                <h1>Carrinho de compras</h1>
                <div class="meio_carrinho_produto_descricao">
                    <div class="meio_carrinho_produto_foto"></div>
                    <div class="meio_carrinho_produto_detalhamento">
                        <p>Processador AMD Ryzen 9 5950X, 3.4GHz (4.9GHz Max
                            Turbo), Cache 72MB, 16 Núcleos, 32 Threads, AM4 - 100-100000059WOF</p>
                        <p class="preco">R$ 2.000,99</p>
                    </div>
                </div>
            </div>
            <div class="meio_carrinho_produtos_preco">
                <section class="resumoPedido">
                    <div class="valorProduto">
                        <div class="res">
                            <p>Resumo do pedido</p>
                        </div>
                        <div class="Valores">
                            <p>Valor dos produtos</p>
                            <p><b>R$ 2.000,99</b></p>
                        </div>
                    </div>
                    <div class="valorFrete">
                        <div class="res">
                            <p>Frete</p>
                            <p><b>R$ 52,00</b></p>
                        </div>
                        <div class="Valores">
                            <p>Valor parcelado</p>
                            <p><b>R$ 2.000,99</b></p>
                        </div>
                    </div>
                    <div class="valorPix">
                        <div class="Valores">
                            <p>Valor no pix</p>
                            <p><b>R$ 1.800,99</b></p>
                        </div>
                </section>
                <section class="endereco">
                    <div class="endereco_principal">
                        <h1>Endereço principal</h1>
                        <p>Rua Alba 1180, Parque Jabaquara</p>
                        <p>Mansão Maromba - CEP: 04370-105</p>
                        <p>São Paulo, São Paulo</p>
                    </div>
                    <div class="entrega-correios">
                        <label>
                            <span>Entrega via Correios</span>
                            <input type="radio" name="entrega"/>
                        </label>
                        <p>Chegará até: 14/10/2024</p>
                        <p class="preco2"><b>R$ 52,00</b></p>
                    </div>
                </section>
            </div>
            <div class="meio_carrinho_finalizar">
                <button>Finalizar compra</button>
            </div>
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