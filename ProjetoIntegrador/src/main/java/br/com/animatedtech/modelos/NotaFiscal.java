package br.com.animatedtech.modelos;

import java.util.ArrayList;
import java.util.Date;

public class NotaFiscal {
	
	private int idCliente;
	private int idNotaFiscal;
	private Date dataNotaFiscal;
	private ArrayList<ItemNota> listaItens;
	
	public NotaFiscal() {
		listaItens = new ArrayList<ItemNota>(); 
	}

	public NotaFiscal(Date dataNotaFiscal, ArrayList<ItemNota> listaItens, int idCliente) {
		super();
		this.dataNotaFiscal = dataNotaFiscal;
		this.listaItens = listaItens;
		this.idCliente = idCliente;
	}
	
	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public int getIdNotaFiscal() {
		return idNotaFiscal;
	}

	public void setIdNotaFiscal(int idNotaFiscal) {
		this.idNotaFiscal = idNotaFiscal;
	}

	public Date getDataNotaFiscal() {
		return dataNotaFiscal;
	}

	public void setDataNotaFiscal(Date dataNotaFiscal) {
		this.dataNotaFiscal = dataNotaFiscal;
	}

	public ArrayList<ItemNota> getListaItens() {
		return listaItens;
	}

	public void setListaItens(ArrayList<ItemNota> listaItens) {
		this.listaItens = listaItens;
	}
	
	
}
