package model;


public class Viagem {
	

	private String idcon;

	private String origem;
	

	private String destino;

	private String data_ida;
	
	private String data_volta;
	

	public Viagem() {
		super();
	}


	public Viagem(String idcon, String origem, String destino, String data_ida, String data_volta) {
		super();
		this.idcon = idcon;
		this.origem = origem;
		this.destino = destino;
		this.data_ida = data_ida;
		this.data_volta = data_volta;
	}


	public String getIdcon() {
		return idcon;
	}


	public void setIdcon(String idcon) {
		this.idcon = idcon;
	}


	public String getOrigem() {
		return origem;
	}


	public void setOrigem(String origem) {
		this.origem = origem;
	}


	public String getDestino() {
		return destino;
	}


	public void setDestino(String destino) {
		this.destino = destino;
	}


	public String getData_ida() {
		return data_ida;
	}


	public void setData_ida(String data_ida) {
		this.data_ida = data_ida;
	}


	public String getData_volta() {
		return data_volta;
	}


	public void setData_volta(String data_volta) {
		this.data_volta = data_volta;
	}
	
	

	
	
	

}
