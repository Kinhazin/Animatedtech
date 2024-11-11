package br.com.animatedtech.modelos;

public class Produto {
    private String nomeFornecedor;
    private String nomeProduto;
    private int codigoProduto;
    private String descricao;
    private float precoUnidade;
    private int quantidadeEstoque;
    
    public Produto(String nomeFornecedor, String nomeProduto, int codigoProduto, String descricao, float precoUnidade,
			int quantidadeEstoque) {
		this.nomeFornecedor = nomeFornecedor;
		this.nomeProduto = nomeProduto;
		this.codigoProduto = codigoProduto;
		this.descricao = descricao;
		this.precoUnidade = precoUnidade;
		this.quantidadeEstoque = quantidadeEstoque;
	}


    public String getNomeFornecedor() {
        return nomeFornecedor;
    }

    public void setNomeFornecedor(String nomeFornecedor) {
        this.nomeFornecedor = nomeFornecedor;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public int getCodigoProduto() {
        return codigoProduto;
    }

	public void setCodigoProduto(int codigoProduto) {
        this.codigoProduto = codigoProduto;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getPrecoUnidade() {
        return precoUnidade;
    }
    
    public void setPrecoUnidade(float precoUnidade) {
    	this.precoUnidade = precoUnidade;
    }

    public int getQuantidadeEstoque() {
        return quantidadeEstoque;
    }

    public void setQuantidadeEstoque(int quantidadeEstoque) {
        this.quantidadeEstoque = quantidadeEstoque;
    }
}