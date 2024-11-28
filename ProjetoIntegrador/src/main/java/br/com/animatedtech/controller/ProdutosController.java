package br.com.animatedtech.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import br.com.animatedtech.DAO.ProdutoDAO;
import br.com.animatedtech.DAO.RelatorioSinteticoDAO;
import br.com.animatedtech.modelos.Cliente;
import br.com.animatedtech.modelos.Produto;
import br.com.animatedtech.modelos.RelatorioSintetico;
import br.com.animatedtech.utils.ConnectionFactory;

@WebServlet(name = "produtos", urlPatterns = {"/administrador/CadastroProdutos", "/views/administrador/CadastroProdutos","/views/administrador/produtos/listar","/administrador/produtos/listar" ,
		"/produtos/listar","/views/administrador/produtos/excluir", "/produtos/excluir", "/administrador/produtos/excluir", "/produtos/editar", "/produtos/updates", "/administrador/relatoriosintetico" })
public class ProdutosController extends HttpServlet {
	private static final long serialVersionUID = 1L;    
	public ProdutoDAO produtoDAO = null;
	
	public ProdutosController() {
		super();
		produtoDAO = new ProdutoDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//try catch para filtrar as notas e acessar os métodos especificos da dao.
		String action = request.getServletPath();
		
		try {
			switch (action) {
			case "/administrador/CadastroProdutos":
				novoProduto(request, response);
				break;
			case "produtos/listar":
				listar(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/views/administrador/CrudProdutos.jsp");
				dispatcher.forward(request, response);
				break;
			case "/produtos/editar":
				editarForm(request, response);
				break;
			case "/produtos/updates":
				update(request, response);
				break;
			case "/produtos/excluir":
				excluir(request, response);
				break;
				
			case "/administrador/relatoriosintetico":
				relatorioSintetico(request, response);
				break;
			default:
				listar(request, response);
				break;
			}
		} catch (SQLException | ParseException ex) {
			throw new ServletException(ex);
		}



	}

	public void novoProduto(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	IOException {
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
			int codigoProdutos = Integer.parseInt(codigoProduto);
			Float preçoUnidade = Float.valueOf(precoUnitario);
			int quantidadeTotal= Integer.parseInt(quantidade);
			
			String action = request.getServletPath();
			ConnectionFactory produtodao = new ConnectionFactory();
			produtodao.testeConexao();



			Produto objCadastrar = new Produto(fornecedor, nomeProduto, codigoProdutos, descricao, preçoUnidade, quantidadeTotal);
			ProdutoDAO produtoDAO = new ProdutoDAO();
			boolean sucessoCadastro = produtoDAO.inserir(objCadastrar);

			request.setAttribute("sucesso", "Cadastro realizado com sucesso!");
		}
		request.getRequestDispatcher("/views/administrador/CadastroProdutos.jsp").forward(request, response);
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws SQLException,
	IOException, ServletException {
		ArrayList<Produto> listaProduto = produtoDAO.listar();
		
		System.out.println("Tamanho da lista" + listaProduto.size());
		
		request.setAttribute("listaProduto", listaProduto);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/administrador/CrudProdutos.jsp");
		dispatcher.forward(request, response);
	}

	private void excluir(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		produtoDAO.excluir(id);
		response.sendRedirect("listar");
	}
	
	private void editarForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Produto produtoAlterar = produtoDAO.buscarPorId(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/administrador/AtualizarProdutos.jsp");
		request.setAttribute("produto", produtoAlterar);
		dispatcher.forward(request, response);
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
	    int id = Integer.parseInt(request.getParameter("id"));
	    String nomeFornecedor = request.getParameter("fornecedor"); 
	    String nomeProduto = request.getParameter("nomeProduto"); 
	    int codigoProduto = Integer.parseInt(request.getParameter("codigoProduto")); 
	    String descricao = request.getParameter("descricao");
	    String precoUnitario = request.getParameter("precoUnitario"); 
	    Float precoUnidade = Float.valueOf(precoUnitario);
	    int quantidadeEstoque = Integer.parseInt(request.getParameter("quantidade"));

	    Produto produtoAtualizar = new Produto(nomeFornecedor, nomeProduto, codigoProduto, descricao, precoUnidade, quantidadeEstoque, id);
	    produtoDAO.atualizar(produtoAtualizar);
	    response.sendRedirect("listar");
	}
	
	private void relatorioSintetico(HttpServletRequest request, HttpServletResponse response) throws SQLException,
	IOException, ServletException, ParseException {
		 String dataInicio = request.getParameter("comeco");
	     String dataFim = request.getParameter("fim");


         // Definindo o formato de data original (yyyy-MM-dd)
         SimpleDateFormat originalFormat = new SimpleDateFormat("yyyy-MM-dd");

         // Convertendo as strings para objetos Date
         Date utilDateInicio = originalFormat.parse(dataInicio);
         Date utilDateFim = originalFormat.parse(dataFim);

         // Convertendo para java.sql.Date para manipulação no banco de dados
         java.sql.Date sqlDateInicio = new java.sql.Date(utilDateInicio.getTime());
         java.sql.Date sqlDateFim = new java.sql.Date(utilDateFim.getTime());
         
         System.out.println(sqlDateInicio);
	     
		ArrayList<RelatorioSintetico> relatorioLista = RelatorioSinteticoDAO.listarPorPeriodo(sqlDateInicio,sqlDateFim);
		
		System.out.println("Tamanho da lista depois da consulta: " + relatorioLista.size());
		request.setAttribute("relatorioLista", relatorioLista);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/administrador/RelatorioProduto.jsp");
		dispatcher.forward(request, response);
	}



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		doPost(request, response);
	}

}
