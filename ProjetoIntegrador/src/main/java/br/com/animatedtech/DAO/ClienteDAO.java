package br.com.animatedtech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.animatedtech.modelos.Cliente;
import br.com.animatedtech.utils.*;

public class ClienteDAO {
	Connection conexao;
	
	public boolean inserir(Cliente cliente) {
		boolean retorno = false;

		try {
			conexao = ConnectionFactory.getConnection();
			String sql = "INSERT INTO CLIENTE (nome,email,cpf,senha) values(?,?,?,?)";

			PreparedStatement ps = conexao.prepareStatement(sql);
			
			ps.setString(1, cliente.getNome());
			ps.setNString(2, cliente.getEmail());
			ps.setString(3, cliente.getCpf());
			ps.setString(4, cliente.getSenha());
			

			int linhasAfetadas = ps.executeUpdate();

			if(linhasAfetadas >0) {	retorno = true; }

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			return retorno;
		}
	}
	
	public ArrayList<Cliente> listar(){	
		ArrayList<Cliente> listaRetorno = new ArrayList<>();
		String sql = "SELECT * FROM Cliente";
		try (
				Connection connection = ConnectionFactory.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				ResultSet rs = preparedStatement.executeQuery();
				)
		{
			while (rs.next()) {
				String nome = rs.getString("nome");
				String email = rs.getString("email");
				String cpf = rs.getString("cpf");
				String senha = rs.getString("senha");
				Cliente objLista = new Cliente(nome, email, cpf, senha);
				listaRetorno.add(objLista);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}

		return listaRetorno;	
	}

}
