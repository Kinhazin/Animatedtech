package br.com.animatedtech.modelos;

public class FaleConosco extends Pedido{
	
    private String assunto;
    private String telefone;
    private String mensagem;
    

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

 @Override
 	public int getCodigoProduto() {
	 	return super.getCodigoProduto();
 	}
 
    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }
}