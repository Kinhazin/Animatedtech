package br.com.animatedtech.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.animatedtech.DAO.ClienteDAO;
import br.com.animatedtech.modelos.Cliente;
import br.com.animatedtech.utils.ConnectionFactory;

@WebServlet(name = "clientes", urlPatterns = {"/clientes/listar","/administrador/clientes/listar","/views/administrador/clientes/listar", "/clientes/Cadastro"})
public class ClientesController extends HttpServlet {
	private static final long serialVersionUID = 1L;  
	public ClienteDAO clienteDAO = null;
	
    public ClientesController() {
        super();
        clienteDAO = new ClienteDAO();
    }
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	
    	//try catch para filtrar as notas e acessar os métodos especificos da dao.
    	String action = request.getServletPath();
    	
    	try {
    		switch (action) {
    		case "/clientes/Cadastro":
    			novo(request, response);
    			break;
    		case "clientes/listar":
    			listar(request, response);
    			RequestDispatcher dispatcher = request.getRequestDispatcher("/views/administrador/CrudCliente.jsp");
    			dispatcher.forward(request, response);
    			break;
    		default:
    			listar(request, response);
    			break;
    		}
    	} catch (SQLException ex) {
    		throw new ServletException(ex);
    	}


		
	}// fim do doPost
    
    private void listar(HttpServletRequest request, HttpServletResponse response) throws SQLException,
    IOException, ServletException {
    	ArrayList<Cliente> listaClientes = clienteDAO.listar();
    	
       System.out.println("Tamanho da lista atualizado negão: " + listaClientes.size());
    	
    	request.setAttribute("listaClientes", listaClientes);
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/views/administrador/CrudCliente.jsp");
    	dispatcher.forward(request, response);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		doPost(request, response);

	}
	
	public void novo(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		
		int numErros = 0;

		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String cpf = request.getParameter("CPF");
		String password = request.getParameter("password");
		String passwordConfirm = request.getParameter("passwordConfirm");

		try {

			if (nome == null || nome.trim().isEmpty()) {
				throw new Exception("O nome é obrigatório.");
			}

			if (email == null || email.trim().isEmpty()) {
				throw new Exception("O email é obrigatório.");
			} else if (!email.contains("@")) {
				throw new Exception("Formato de email inválido.");
			}

			if (cpf == null || cpf.trim().isEmpty()) {
				throw new Exception("O CPF é obrigatório.");
			} else if (cpf.length() != 11) {
				throw new Exception("O CPF deve conter 11 dígitos.");
			}

			if (password == null || password.trim().isEmpty()) {
				throw new Exception("A senha é obrigatória.");
			}

			if (passwordConfirm == null || passwordConfirm.trim().isEmpty()) {
				throw new Exception("A confirmação da senha é obrigatória.");
			} else if (!password.equals(passwordConfirm)) {
				throw new Exception("As senhas não são iguais.");
			}

			long numeroCpf = Long.parseLong(cpf);

		} catch (NumberFormatException ex) {
			request.setAttribute("erro", "Somente números no CPF");
			numErros++;
		} catch (Exception e) {
			request.setAttribute("erro", e.getMessage());
			numErros++;
		}

		if (numErros == 0) {	
			String action = request.getServletPath();
			ConnectionFactory clientedao = new ConnectionFactory();
			clientedao.testeConexao();

			Cliente objCadastrar = new Cliente(nome, email, cpf, password);
			ClienteDAO clienteDAO = new ClienteDAO();
			boolean sucessoCadastro = clienteDAO.inserir(objCadastrar);
			
			request.setAttribute("sucesso", "Cadastro realizado com sucesso!");
		}

		request.getRequestDispatcher("/views/clientes/Cadastro.jsp").forward(request, response);

	}
	

}
