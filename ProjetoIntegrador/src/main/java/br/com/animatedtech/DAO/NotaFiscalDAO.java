package br.com.animatedtech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import br.com.animatedtech.utils.*;
import java.time.LocalDate;
import java.time.ZoneId;

public class NotaFiscalDAO {
	
    public int salvar(String idCliente, String dataNota, String[] vetorIdProdutos, String[] vetorQtdProdutos, String[] vetorValoresUnitarios) {

    	int retornoNumeroNota = 0;
    	
        // Primeiro, insero a nota fiscal para gerar o idNotaFiscal
        String sqlNota = "INSERT INTO NotaFiscal (dataNotaFiscal, idCliente) VALUES (?,?)";
        
        try (Connection conn = ConnectionFactory.getConnection();
            PreparedStatement comandoNota = conn.prepareStatement(sqlNota,
            								Statement.RETURN_GENERATED_KEYS)) {
        	
        	comandoNota.setDate(1, java.sql.Date.valueOf(dataNota));
        	comandoNota.setInt(2, Integer.parseInt(idCliente));

        	comandoNota.executeUpdate();

            // Recupero o ID gerado da nota fiscal
            ResultSet rs = comandoNota.getGeneratedKeys();
            if (rs.next()) {
            	//Resgato o id gerado da nota fiscal para gravar na tabela ItemNotaFiscal
                int idNota = rs.getInt(1);
                retornoNumeroNota = idNota;

                //Para cada item no vetor, insiro na tabela ItemNotaFiscal
                String sqlItem = "INSERT INTO ItemNotaFiscal (idNotaFiscal, idProduto, qtdProduto, valorUnitario) VALUES (?, ?, ?, ?)";
                try (PreparedStatement comandoItem = conn.prepareStatement(sqlItem)) {
                    for (int i = 0; i < vetorIdProdutos.length; i++) {
                    	comandoItem.setInt(1, idNota);
                    	comandoItem.setString(2, vetorIdProdutos[i]);
                    	comandoItem.setInt(3, Integer.parseInt(vetorQtdProdutos[i]));
                    	comandoItem.setFloat(4, Float.parseFloat(vetorValoresUnitarios[i]));
                    	comandoItem.executeUpdate();
                    }
                    
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return retornoNumeroNota;
    }
}
