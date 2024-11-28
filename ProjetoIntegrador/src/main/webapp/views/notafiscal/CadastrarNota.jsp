<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>Gravar Nota Fiscal</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleCadastrarNotas.css">
</head>
<body>
 <header class="cabecalho">
        <div class="cabecalho__Logo">
            <img src="${pageContext.request.contextPath}/includes/LOGOTIPO.png" height="100%" width="auto">
            <p class="cabecalho__Logo__Logotipo">AnimatedTech</p>
        </div>
	<c:if test="${not empty sucesso}">
		<div style="color: green;">${sucesso}</div>
	</c:if>
 <main class="meio">
	<h2>Cadastro de Nota Fiscal</h2>
	<form action="${pageContext.request.contextPath}/notafiscal/novo"
		method="post">
		<!-- Campo para data da nota -->
		<label for="dataNota">Data da Nota:</label> <input type="date"
			name="dataNota" id="dataNota" required><br>
		<br> <label for="idCliente">ID do cliente:</label> <input
			type="number" name="idCliente" id="idCliente" required><br>
		<br>


		<h3>Produtos</h3>
		<div id="produtos">
			<div class="produto">
				<label for="idProduto">ID do Produto:</label> <input type="text"
					name="vetorIdProdutos[]" required> <label for="qtdProduto">Quantidade:</label>
				<input type="number" name="vetorQtdProdutos[]" required> <label
					for="valorUnitario">Valor Unitário:</label> <input type="number"
					name="vetorValoresUnitarios[]" required> <br>
				<br>
			</div>
		</div>

		<div class="bot">
			<button type="button" onclick="adicionarProduto()">Adicionar
				Produto</button>
			<br>
			<br> <input type="submit" value="Gravar Nota Fiscal">
		</div>
	</form>
	</main>
	<script>
        function adicionarProduto() {
            var div = document.createElement("div");
            div.className = "produto";
            
            div.innerHTML = `
                <label for="idProduto">ID do Produto:</label>
                <input type="text" name="vetorIdProdutos[]" required>
                
                <label for="qtdProduto">Quantidade:</label>
                <input type="number" name="vetorQtdProdutos[]" required>
                
                <label for="valorUnitario">Valor Unitário:</label>
                <input type="number" name="vetorValoresUnitarios[]" required>
                
                <br><br>
            `;
            document.getElementById("produtos").appendChild(div);
        }
    </script>
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
