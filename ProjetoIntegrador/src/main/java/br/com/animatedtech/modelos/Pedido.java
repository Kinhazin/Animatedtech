package br.com.animatedtech.modelos;

public class Pedido {
	private Produto produto;
	private Cliente cliente;
	

		public String getNomeProduto() {
			return produto.getNomeProduto();
		}
				
		public String getCpf() {
			return cliente.getCPF();
		}

	    public int getCodigoProduto() {
	        return produto.getCodigoProduto();
	    }

	    public String getEndereco() {
	        return cliente.getEndereco();
	    }

	    public void setProduto(Produto produto) {
	        this.produto = produto;
	    }


	    public void setCliente(Cliente cliente) {
	        this.cliente = cliente;
	    }
	

}
