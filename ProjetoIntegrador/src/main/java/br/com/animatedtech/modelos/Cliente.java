package br.com.animatedtech.modelos;

import java.util.List;

public class Cliente {
    private String nome;
    private String email;
    private String cpf;
    private String senha;

    
    public Cliente(String nome, String email, String cpf, String senha) {
  		this.nome = nome;
  		this.email = email;
  		this.cpf = cpf;
  		this.senha = senha;
  	}
    
    
    public Cliente() {
		super();
	}


	public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCPF() {
        return cpf;
    }

    public void setCPF(String CPF) {
        this.cpf = CPF;
    }

	public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

}
