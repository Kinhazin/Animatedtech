package br.com.animatedtech.modelos;

public class RelatorioAnalitico {
	private String nome;
	private float valor;
	
	
	
	public RelatorioAnalitico(String nome, float valor) {
		super();
		this.nome = nome;
		this.valor = valor;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public float getValor() {
		return valor;
	}
	public void setValor(float valor) {
		this.valor = valor;
	}
	
	

}
