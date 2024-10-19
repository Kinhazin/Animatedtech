package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CadastroCli extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CadastroCli() {
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
			String nome = request.getParameter("nome");
			String email = request.getParameter("email");
			String CPF = request.getParameter("CPF");
			String password = request.getParameter("password");
			String passwordConfirm = request.getParameter("passwordConfirm");

			if (nome == null || nome.trim().isEmpty()) {
				throw new Exception("O nome é obrigatório.");
			}

			if (email == null || email.trim().isEmpty()) {
				throw new Exception("O email é obrigatório.");
			} else if (!email.contains("@")) {
				throw new Exception("Formato de email inválido.");
			}

			if (CPF == null || CPF.trim().isEmpty()) {
				throw new Exception("O CPF é obrigatório.");
			} else if (CPF.length() != 11 || !CPF.matches("\\d+")) {
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

			int CPFs = Integer.parseInt(CPF);

		} catch (NumberFormatException ex) {
			request.setAttribute("erro", "Somente número no CPF");
			numErros++;
		} catch (Exception e) {
			request.setAttribute("erro", e.getMessage());
			numErros++;
		}

		if (numErros == 0) {
			request.setAttribute("sucesso", "Cadastro realizado com sucesso!");
		}

		request.getRequestDispatcher("/views/cliente/Cadastro.jsp").forward(request, response);
	}
}
