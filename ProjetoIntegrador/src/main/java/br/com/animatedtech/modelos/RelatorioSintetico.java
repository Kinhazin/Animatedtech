package br.com.animatedtech.modelos;

import java.sql.Date;

public class RelatorioSintetico {

	private int idProduto;
	private Date dataVenda;
	private float valorUnitario;
	private String nomeCliente;
	private int qtdProduto;
	
	
	
	public RelatorioSintetico(int idProduto, Date dataVenda, float valorUnitario, String nomeCliente, int qtdProduto) {
		super();
		this.idProduto = idProduto;
		this.dataVenda = dataVenda;
		this.valorUnitario = valorUnitario;
		this.nomeCliente = nomeCliente;
		this.qtdProduto = qtdProduto;
	}
	
	public Date getDataVenda() {
		return dataVenda;
	}

	public void setDataVenda(Date dataVenda) {
		this.dataVenda = dataVenda;
	}

	public int getQtdProduto() {
		return qtdProduto;
	}

	public void setQtdProduto(int qtdProduto) {
		this.qtdProduto = qtdProduto;
	}

	public int getIdProduto() {
		return idProduto;
	}
	public void setIdProduto(int idProduto) {
		this.idProduto = idProduto;
	}
	public float getValorUnitario() {
		return valorUnitario;
	}
	public void setValorUnitario(float valorUnitario) {
		this.valorUnitario = valorUnitario;
	}
	public String getNomeCliente() {
		return nomeCliente;
	}
	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}

	
	
}
