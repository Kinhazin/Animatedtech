package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CadastroProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CadastroProduto() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int numErros = 0;

		try {
			String fornecedor = request.getParameter("fornecedor");
			String nomeProduto = request.getParameter("nomeProduto");
			String codigoProduto = request.getParameter("codigoProduto");
			String descricao = request.getParameter("descricao");
			String precoUnitario = request.getParameter("precoUnitario");
			String quantidade = request.getParameter("quantidade");

			if (fornecedor == null || fornecedor.trim().isEmpty()) {
				throw new Exception("O nome do fornecedor é obrigatório.");
			}

			if (nomeProduto == null || nomeProduto.trim().isEmpty()) {
				throw new Exception("O nome do produto é obrigatório.");
			} 

			if (codigoProduto == null || codigoProduto.trim().isEmpty()) {
				throw new Exception("O CPF é obrigatório.");
			} 

			if (descricao == null || descricao.trim().isEmpty()) {
				throw new Exception("A descrição é obrigatória.");
			}

			if (precoUnitario == null || precoUnitario.trim().isEmpty()) {
				throw new Exception("O preço unitario é obrigatório.");
			} 
			
			if (precoUnitario == null || precoUnitario.trim().isEmpty()) {
				throw new Exception("O preço unitario é obrigatório.");
			}

			int codigoProdutos = Integer.parseInt(codigoProduto);
			int preçoUnidade = Integer.parseInt(precoUnitario);
			int quantidadeTotal= Integer.parseInt(quantidade);

		} catch (NumberFormatException ex) {
			request.setAttribute("erro", "Somente número nos campos de preço unitario, código do produto e quantidade em estoque");
			numErros++;
		} catch (Exception e) {
			request.setAttribute("erro", e.getMessage());
			numErros++;
		}

		if (numErros == 0) {
			request.setAttribute("sucesso", "Cadastro realizado com sucesso!");
		}

		request.getRequestDispatcher("/views/administrador/CadastroProdutos.jsp").forward(request, response);
	}
}
