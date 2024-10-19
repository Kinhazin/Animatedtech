<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleTelaPrincipal.css">
    <title>Tela principal</title>
</head>

<body>
    <header class="cabecalho">
        <section class="cabecalho_sec">
            <input type="text" maxlength="50" placeholder="DIGITE O PRODUTO QUE DESEJA COMPRAR">
            <div class="cabecalho_sec_links">
                <div class="cabecalho_sec_links__grupo">
                    <a href="${pageContext.request.contextPath}/views/produtos/FaleConosco">
                        <img src="${pageContext.request.contextPath}/includes/ENTRE_EM_CONTATO.png" height="40px">
                        <span>
                            <div>
                                <b>Atendimento</b>
                            </div>
                        </span>
                    </a>
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/includes/SOBRE_NOS.png" height="40px">
                        <span>
                            <div>
                                <b>Sobre nós</b>
                            </div>
                        </span>
                    </a>
                    <a href="${pageContext.request.contextPath}/views/produtos/Carrinho.jsp">
                        <img src="${pageContext.request.contextPath}/includes/CARRINHO.png" height="40px">
                        <span>
                            <div>
                                <b>Carrinho</b>
                            </div>
                        </span>
                    </a>
                </div>
            </div>
        </section>
    </header>
    <main class="meio">
        <section class="banner"></section>
        <img class="moca_canenca" src="${pageContext.request.contextPath}/includes/MOCA_CANECA.png">
        <section class="marcas">
            <a class="intel" href="#">INTEL</a>
            <a class="amd" href="#">AMD</a>
            <a class="nvidia" href="#">NVIDIA</a>
            <a class="logitech" href="#">LOGITECH</a>
        </section>
        <img class="caneco_bravo" src="${pageContext.request.contextPath}/includes/CANECO_ARRETADO.png">
        <section class="produtos_fileira1">
            <div class="p1">
                <div class="fig"></div>
                <div class="espec">
                    <div>
                        <p>Console PlayStation 5 Slim, SSD 1TB, Edição Digital, Branco + 2 Jogos Digitais</p>
                    </div>
                    <div class="pDiv">
                        <p><b>R$ 3.500,00</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>

                </div>
            </div>
            <div class="p2">
                <div class="fig"></div>
                <div class="espec">
                    <p>Headset Gamer Fallen Morcego, Surround Virtual 7.1, Cancelamento de Ruído, Drivers 53mm -
                        He-Ga-Fn-Mo</p>
                    <div class="pDiv">
                        <p><b>R$ 299,99</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
            <div class="p3">
                <div class="fig"></div>
                <div class="espec">
                    <p>Teclado Mecânico Gamer Redragon Kumara RGB Switch Outemu Brown ABNT2 - K552RGB-1 (BROWN)</p>
                    <div class="pDiv">
                        <p><b>R$ 249,99</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>

            <div class="p4">
                <div class="fig"></div>
                <div class="espec">
                    <p>Processador AMD Ryzen 9 5950X, 3.4GHz (4.9GHz Max Turbo), Cache 72MB, 16 Núcleos, 32 Threads, AM4
                    </p>
                    <div class="pDiv">
                        <p><b>R$ 2.000,99</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
        </section>
        <img src="${pageContext.request.contextPath}/includes/XICRINHO.png" class="xicrinho">
        <section class="produtos_fileira2">
            <div class="p1">
                <div class="fig"></div>
                <div class="espec">
                    <p>HyperX Microfone Gamer QuadCast</p>
                    <div class="pDiv">
                        <p><b>R$ 633,99</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
            <div class="p2">
                <div class="fig"></div>
                <div class="espec">
                    <p>Placa de Vídeo RTX 3060 1-Click OC Galax NVIDIA GeForce, 12GB GDDR6, LHR, DLSS, Ray Tracing</p>
                    <div class="pDiv">
                        <p><b>R$ 1.739,99</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
            <div class="p3">
                <div class="fig"></div>
                <div class="espec">
                    <p>Cadeira Gamer Mymax Mx5, Até 150KG, Almofadas, Ergonômica, Couro Sintético, Preto e Branco</p>
                    <div class="pDiv">
                        <p><b>R$ 509,15</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
            <div class="p4">
                <div class="fig"></div>
                <div class="espec">
                    <p>
                        Notebook Gamer Acer Nitro V15 Intel Core i5-13420H, 8GB RAM, GeForce RTX 3050, SSD 512GB, 15.6"
                        FHD IPS 144Hz, Windows 11, Preto</p>
                    <div class="pDiv">
                        <p><b>R$ 4.799,99</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
        </section>
        <img src="${pageContext.request.contextPath}/includes/CAINDO.png" class="caindo">
        <img src="${pageContext.request.contextPath}/includes/CANECO.png" class="canequin">
        <section class="produtos_fileira3">
            <div class="p1">
                <div class="fig"></div>
                <div class="espec">
                    <p>Mouse Gamer HyperX Pulsefire Core RGB 6200 DPI</p>
                    <div class="pDiv">
                        <p><b>R$ 149,99</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
            <div class="p2">
                <div class="fig"></div>
                <div class="espec">
                    <p>PC Gamer Neologic Aquarium, AMD Ryzen 5-5600g, 16GB RAM, Radeon Vega 7 Integrado, SSD 480GB M.2,
                        Fonte 500W 80 Plus, Windows 11 - Nli86303</p>
                    <div class="pDiv">
                        <p><b>R$ 2.946,31</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
            <div class="p3">
                <div class="fig"></div>
                <div class="espec">
                    <p>Monitor Gamer KBM! GAMING MG800 34", Ultrawide, 180Hz, QHD, 1ms, DisplayPort e HDMI, Adaptive
                        Sync, 95% SRGB</p>
                    <div class="pDiv">
                        <p><b>R$ 1.799,99</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
            <div class="p4">
                <div class="fig"></div>
                <div class="espec">
                    <p>iPhone 16 Apple 128GB, Câmera Dupla de 48MP, Tela 6,1", Ultramarino</p>
                    <div class="pDiv">
                        <p><b>R$ 7.019,10</b></p>
                        <button class="botaoCarrinho"></button>
                    </div>
                </div>
            </div>
        </section>
        <!---->

    </main>
    <footer class="rodape">
        <div class="rodape__logos">
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
            <img src="${pageContext.request.contextPath}/includes/LOGO-SENAC.png" width="90" ;>
        </div>
        <div class="rodape__logos__textos">
            <p class="textinhos">AnimatedTech!® é uma marca ficticia de alunos SENAC | CNPJ: 08.508.508/5085-08
                | Todos
                os direitos
                reservados.<br>
                Os preços anunciados neste site ou via e-mail promocional podem ser alterados sem prévio aviso.
                O
                AnimatedTech! não é responsável por erros descritivos. As fotos contidas nesta página são
                meramente
                ilustrativas do produto e podem variar de acordo com o fornecedor/<br>lote do fabricante.</p>
        </div>
    </footer>
</body>