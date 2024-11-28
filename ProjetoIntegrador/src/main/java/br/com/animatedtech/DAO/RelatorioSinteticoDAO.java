package br.com.animatedtech.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.animatedtech.modelos.RelatorioSintetico;
import br.com.animatedtech.utils.ConnectionFactory;

public class RelatorioSinteticoDAO {
	Connection conexao;
	
	public static ArrayList<RelatorioSintetico> listarPorPeriodo(Date dtInicio, Date dtFim) {
	    ArrayList<RelatorioSintetico> listaRetorno = new ArrayList<>();
	    String sql = "SELECT NotaFiscal.idNotaFiscal, cliente.nome, produtos.idProduto, NotaFiscal.dataNotaFiscal, ItemNotaFiscal.valorUnitario, ItemNotaFiscal.qtdProduto " +
	                 "FROM cliente " +
	                 "INNER JOIN NotaFiscal ON cliente.idcliente = NotaFiscal.idCliente " +
	                 "INNER JOIN ItemNotaFiscal ON NotaFiscal.idNotaFiscal = ItemNotaFiscal.idNotaFiscal " +
	                 "INNER JOIN Produtos ON Produtos.idProduto = ItemNotaFiscal.idProduto " +
	                 "WHERE NotaFiscal.dataNotaFiscal BETWEEN ? AND ?";

	    try (
	        Connection connection = ConnectionFactory.getConnection();
	        PreparedStatement preparedStatement = connection.prepareStatement(sql)
	    ) {
	        preparedStatement.setDate(1, new java.sql.Date(dtInicio.getTime()));
	        preparedStatement.setDate(2, new java.sql.Date(dtFim.getTime()));

	        try (ResultSet rs = preparedStatement.executeQuery()) {
	            while (rs.next()) {
	                int idProduto = rs.getInt("idProduto");
	                Date dataVenda = rs.getDate("dataNotaFiscal");
	                Float valorUnitario = rs.getFloat("valorUnitario");
	                String nomeCliente = rs.getString("nome");
	                int qtdProduto = rs.getInt("qtdProduto");

	                RelatorioSintetico objLista = new RelatorioSintetico(idProduto, dataVenda, valorUnitario, nomeCliente, qtdProduto);
	                listaRetorno.add(objLista);
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return listaRetorno;
	}

}
