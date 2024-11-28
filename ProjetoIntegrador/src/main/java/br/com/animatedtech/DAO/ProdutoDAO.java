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
	
	public Produto buscarPorId(int id) {

		Produto objRetorno = null;
		String sql = "SELECT * FROM Produtos WHERE idProduto = ?";

		try (
				Connection connection = ConnectionFactory.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql)
				)
		{
			preparedStatement.setInt(1, id);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				String nomeFornecedor = rs.getString("nomeFornecedor");
				String nomeProduto = rs.getString("nomeProduto");
				int codigoProduto = rs.getInt("codigoProduto");
				String descricao = rs.getString("descricao");
				float precoUnidade = rs.getFloat("precoUnidade");
				int quantidadeEstoque = rs.getInt("quantidadeEstoque");
				
				objRetorno = new Produto(nomeFornecedor, nomeProduto, codigoProduto, descricao, precoUnidade,quantidadeEstoque, id);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}

		return objRetorno;
	}
	
	
	public boolean atualizar(Produto produtoAtualizar) {
		boolean retorno = false;

		try {
			conexao = ConnectionFactory.getConnection();

			String sql = "UPDATE Produtos SET nomeFornecedor=?, nomeProduto=?, codigoProduto=?, descricao=?, precoUnidade=?, quantidadeEstoque=? WHERE idProduto = ?";

			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, produtoAtualizar.getNomeFornecedor());
			ps.setString(2, produtoAtualizar.getNomeProduto());
			ps.setInt(3, produtoAtualizar.getCodigoProduto());
			ps.setString(4, produtoAtualizar.getDescricao());
			ps.setFloat(5, produtoAtualizar.getPrecoUnidade());
			ps.setInt(6, produtoAtualizar.getQuantidadeEstoque());
			ps.setInt(7, produtoAtualizar.getIdProduto());
			
			
			int linhasAfetadas = ps.executeUpdate();
			if(linhasAfetadas >0) {retorno = true;}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally{
			if (conexao != null) {
				try {
					conexao.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} 
		return retorno;
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
				int idProduto = rs.getInt("idProduto");
				
				Produto objLista = new Produto(nomeFornecedor, nomeProduto, codigoProduto, descricao, precoUnidade, quantidadeEstoque, idProduto);
				listaRetorno.add(objLista);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return listaRetorno;	
	}
	
	public boolean excluir(int id) {
		  boolean retorno = false;
		  
		  try {
			  conexao = ConnectionFactory.getConnection();
		       String sql = "DELETE FROM Produtos WHERE idProduto = ?";
		  
		       PreparedStatement ps = conexao.prepareStatement(sql);
		       ps.setInt(1, id);

		       int linhasAfetadas = ps.executeUpdate();
		   
		       if(linhasAfetadas >0) {retorno = true;}
		  
		  } catch (SQLException e) {
		       e.printStackTrace();
		  } finally{
		     if (conexao != null) {
		        try {
		             conexao.close();
		       } catch (SQLException e) {e.printStackTrace();}
		  }
		 }  
		 
		 return retorno;
	}

}
