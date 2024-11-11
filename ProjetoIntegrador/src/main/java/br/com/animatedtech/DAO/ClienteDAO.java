package br.com.animatedtech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.animatedtech.modelos.Cliente;
import br.com.animatedtech.utils.*;

public class ClienteDAO {
	Connection conexao;

	
	public boolean inserir(Cliente cliente) {
		boolean retorno = false;

		try {
			conexao = ConnectionFactory.getConnection();
			String sql = "INSERT INTO cliente (nome,email,cpf,senha) values(?,?,?,?)";

			PreparedStatement ps = conexao.prepareStatement(sql);
			
			ps.setString(1, cliente.getNome());
			ps.setNString(2, cliente.getEmail());
			ps.setString(3, cliente.getCPF());
			ps.setString(4, cliente.getSenha());
			

			int linhasAfetadas = ps.executeUpdate();

			if(linhasAfetadas >0) {	retorno = true; }

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			return retorno;
		}
	}

}
