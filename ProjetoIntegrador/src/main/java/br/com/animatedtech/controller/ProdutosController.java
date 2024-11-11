package br.com.animatedtech.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;

import br.com.animatedtech.DAO.ProdutoDAO;
import br.com.animatedtech.modelos.Produto;
import br.com.animatedtech.utils.ConnectionFactory;


public class ProdutosController extends HttpServlet {
	private static final long serialVersionUID = 1L;    
	
    public ProdutosController() {
        super();
    }
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	String fornecedor = request.getParameter("fornecedor");
		String nomeProduto = request.getParameter("nomeProduto");
		String codigoProduto = request.getParameter("codigoProduto");
		String descricao = request.getParameter("descricao");
		String precoUnitario = request.getParameter("precoUnitario");
		String quantidade = request.getParameter("quantidade");

		int numErros = 0;

		try {
			
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
		int codigoProdutos = Integer.parseInt(codigoProduto);
		Float preçoUnidade = Float.valueOf(precoUnitario);
		int quantidadeTotal= Integer.parseInt(quantidade);
		
		
		String action = request.getServletPath();
		ConnectionFactory produtodao = new ConnectionFactory();
		produtodao.testeConexao();
		
	
		
		Produto objCadastrar = new Produto(fornecedor, nomeProduto, codigoProdutos, descricao, preçoUnidade, quantidadeTotal);
		ProdutoDAO produtoDAO = new ProdutoDAO();
		boolean sucessoCadastro = produtoDAO.inserir(objCadastrar);
		request.getRequestDispatcher("/views/administrador/CadastroProdutos.jsp").forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

}
