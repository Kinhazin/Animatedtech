package br.com.animatedtech.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.animatedtech.modelos.RelatorioAnalitico;
import br.com.animatedtech.utils.ConnectionFactory;

public class RelatorioAnaliticoDAO {
	Connection conexao;
	
	public static ArrayList<RelatorioAnalitico> listarTotal() {
	    ArrayList<RelatorioAnalitico> listaRetorno = new ArrayList<>();
	    String sql = "SELECT cliente.nome, SUM(ItemNotaFiscal.valorUnitario * ItemNotaFiscal.qtdProduto) AS ValorTotal FROM "
	    		+ "cliente INNER JOIN NotaFiscal ON cliente.idcliente = NotaFiscal.IdCliente INNER JOIN ItemNotaFiscal ON NotaFiscal.idNotaFiscal = ItemNotaFiscal.idNotaFiscal "
	    		+ "GROUP BY cliente.nome ORDER BY ValorTotal DESC";

	    try (
	        Connection connection = ConnectionFactory.getConnection();
	        PreparedStatement preparedStatement = connection.prepareStatement(sql)
	    ) {

	        try (ResultSet rs = preparedStatement.executeQuery()) {
	            while (rs.next()) {
	            	Float valor = rs.getFloat("ValorTotal");
	                String nome = rs.getString("nome");

	                RelatorioAnalitico objLista = new RelatorioAnalitico(nome, valor);
	                listaRetorno.add(objLista);
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return listaRetorno;
	}

}
