<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleFaleConosco.css">
    <title>Fale conosco</title>
</head>

<body>
    <header class="cabecalho">
        <div class="cabecalho__Logo">
            <img src="${pageContext.request.contextPath}/includes/LOGOTIPO.png" height="100%" width="auto">
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
        </div>
    </header>

    <main class="meio">

        <section class="principal">
    
            

            <div class="Formulario__contato">
            
                <form class="Formulario">
                <h1>ENTRE EM CONTATO CONOSCO</h1>
                    <label for="assunto">ASSUNTO:</label>
                    <select id="assunto" name="assunto">
                        <option value="" disabled selected>Selecione uma opção</option>
                        <option value="atraso">Minha entrega está atrasada</option>
                        <option valeu="Errado">Chegou um item diferente do desejado</option>
                        <option valeu="Defeito">Meu item apresenta defeito</option>
                        <option valeu="Reembolso">Desejo solicitar reembolso</option>
                    </select>
                    <br><br>

                    <label for="pedido">PEDIDO:</label>
                    <select id="pedido" name="pedido">
                        <option value="" disabled selected>Selecione um pedido</option>
                        <option valeu="1">#0001</option>
                        <option valeu="2">#0002</option>
                    </select>
                    <br><br>

                    <label for="telefone">TELEFONE PARA CONTATO:</label>
                    <input type="tel" id="telefone" name="telefone" placeholder="(___) _____-_____">
                    <br><br>

                    <label for="mensagem">MENSAGEM:</label>
                    <textarea maxlength="486" id="mensagem" name="mensagem"
                        placeholder="Digite a sua mensagem"></textarea>
                    <br><br>

                    <input type="submit" value="Enviar">
                </form>
            </div>
        </section>
        <div class="imagem2"></div>
    </main>

    <footer class="rodape">
        <div class="rodape__logos">
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
            <img src="${pageContext.request.contextPath}/includes/LOGO-SENAC.png" width="90";>
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