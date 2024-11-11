package br.com.animatedtech.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import br.com.animatedtech.utils.ConnectionFactory;

public class ConnectionFactory {
	
	public static Connection getConnection() {

		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver"); //carrega a classe do driver MySQL para que o Java possa se comunicar com o banco de dados
			
			String url = "jdbc:mysql://localhost/animatedtechbanco"; // URL para achar o banco de dados
			
			Connection retorno = DriverManager.getConnection(url,"root","1234"); // usuario e senha para acessar o banco
			
			return retorno;

		}catch(SQLException ex) {
			Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
			throw new RuntimeException("Erro ao abrir conexão", ex);

		}catch (ClassNotFoundException ex) {
			Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
			throw new RuntimeException("Erro ao registrar driver do JDBC", ex);

		}
		
	}
	
	public void testeConexao() {
		try {
			Connection retorno = getConnection();
			System.out.print("passinho");
			retorno.close();
		}catch(Exception e){
			System.out.print(e);
		}
	}
 
 } 
