<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validar</title>
</head>
<body>
	<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    
    if (email != null && password != null) {

        if (email.equals("usuario@senac.com") && password.equals("1234")) {
            response.sendRedirect("../produtos/TelaPrincipal.jsp");
        } else if (email.equals("admin@senac.com") && password.equals("1234")) {
            response.sendRedirect("../administrador/AcessoAdm.jsp");
        }else {
            request.setAttribute("errorMessage", "Email ou senha inválidos!");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    } else {
        request.getRequestDispatcher("Login.jsp").forward(request, response);
        request.setAttribute("errorMessage", "Preencha o formulario");
    }
%>
</body>
</html>