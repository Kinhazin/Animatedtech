package br.com.animatedtech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.animatedtech.modelos.Produto;
import br.com.animatedtech.utils.*;

public class ProdutoDAO {
	Connection conexao;

	
	public boolean inserir(Produto produto) {
		boolean retorno = false;

		try {
			conexao = ConnectionFactory.getConnection();
			String sql = "INSERT INTO Produtos (nomeFornecedor, nomeProduto, codigoProduto, descricao, precoUnidade, quantidadeEstoque) values(?,?,?,?,?,?)";

			PreparedStatement ps = conexao.prepareStatement(sql);
			
			ps.setString(1, produto.getNomeFornecedor());
			ps.setNString(2, produto.getNomeProduto());
			ps.setInt(3, produto.getCodigoProduto());
			ps.setString(4, produto.getDescricao());
			ps.setFloat(5, produto.getPrecoUnidade());
			ps.setInt(6, produto.getQuantidadeEstoque());
			
			int linhasAfetadas = ps.executeUpdate();

			if(linhasAfetadas >0) {	retorno = true; }

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			return retorno;
		}
	}

}
