package br.com.animatedtech.modelos;

import java.util.List;

public class Cliente {
    private String nome;
    private String email;
    private String cpf;
    private String senha;

    
    public Cliente(final String nome, final String email, final String cpf, final String senha) {
  		this.nome = nome;
  		this.email = email;
  		this.cpf = cpf;
  		this.senha = senha;
  	}
    

	public String getNome() {
        return nome;
    }

    public void setNome(final String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(final String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(final String Cpf) {
        this.cpf = Cpf;
    }

	public String getSenha() {
        return senha;
    }

    public void setSenha(final String senha) {
        this.senha = senha;
    }

}
