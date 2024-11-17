package br.com.animatedtech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public ArrayList<Produto> listar(){	
		ArrayList<Produto> listaRetorno = new ArrayList<>();
		String sql = "SELECT * FROM Produtos";
		try (
				Connection connection = ConnectionFactory.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				ResultSet rs = preparedStatement.executeQuery();
				)
		{
			while (rs.next()) {
				String nomeFornecedor = rs.getString("nomeFornecedor");
				String nomeProduto = rs.getString("nomeProduto");
				int codigoProduto = rs.getInt("codigoProduto");
				String descricao = rs.getString("descricao");
				float precoUnidade = rs.getFloat("precoUnidade");
				int quantidadeEstoque = rs.getInt("quantidadeEstoque");
				
				Produto objLista = new Produto(nomeFornecedor, nomeProduto, codigoProduto, descricao, precoUnidade, quantidadeEstoque);
				listaRetorno.add(objLista);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return listaRetorno;	
	}

}
