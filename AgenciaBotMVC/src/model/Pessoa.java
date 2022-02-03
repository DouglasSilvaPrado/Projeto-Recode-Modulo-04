package model;

public class Pessoa {
	
	private String idcon;

	private String nome;
	

	private String cpf;

	private String telefone;

	public Pessoa() {
		super();
	}

	public Pessoa(String idcon, String nome, String cpf, String telefone) {
		super();
		this.idcon = idcon;
		this.nome = nome;
		this.cpf = cpf;
		this.telefone = telefone;
	}

	public String getIdcon() {
		return idcon;
	}

	public void setIdcon(String idcon) {
		this.idcon = idcon;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	

}
