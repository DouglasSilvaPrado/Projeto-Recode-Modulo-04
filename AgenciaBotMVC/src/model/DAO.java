package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {
	// Modulo de Conexão

	// Parametros de Conexão
	private String driver = "com.mysql.cj.jdbc.Driver";

	private String url = "jdbc:mysql://localhost:3306/agencia?useTimezone=true&serverTimezone=UTC";

	private String user = "root";

	private String password = "Superonze1@";

	// teste de conexão
	public void test() {
		try {
			Connection con = conectar();
			System.out.println(con);
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	// Metodo de Conexão
	private Connection conectar() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}

	// CRUDE CREATE viagem
	public void inseri(Viagem viagem) {
		String create = "INSERT INTO viagem(origem,destino,data_ida, data_volta)VALUES(?,?,?,?);";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(create);
			pst.setString(1, viagem.getOrigem());
			pst.setString(2, viagem.getDestino());
			pst.setString(3, viagem.getData_ida());
			pst.setString(4, viagem.getData_volta());

			pst.executeUpdate();

			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// CRUDE CREATE pessoa
	public void inseriPessoa(Pessoa pessoa) {
		String create = "INSERT INTO pessoa(nome,cpf,telefone)VALUES(?,?,?);";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(create);
			pst.setString(1, pessoa.getNome());
			pst.setString(2, pessoa.getCpf());
			pst.setString(3, pessoa.getTelefone());

			pst.executeUpdate();

			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// CRUDE READ viagem
	public ArrayList<Viagem> listar() {
		// Criando um objeto para acessar a class JavaBeans
		ArrayList<Viagem> viagens = new ArrayList<>();

		String read = "SELECT * FROM viagem order by id_viagem;";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read);
			ResultSet rs = pst.executeQuery();
			// enquanto houver dados
			while (rs.next()) {
				// variaveis de apoio que recebe dados do banco
				String idcon = rs.getString(1);
				String origem = rs.getString(2);
				String destino = rs.getString(3);
				String data_ida = rs.getString(4);
				String data_volta = rs.getString(5);
				// populando o ArrayList
				viagens.add(new Viagem(idcon, origem, destino, data_ida, data_volta));
			}
			con.close();
			return viagens;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	// CRUDE READ pessoa
	public ArrayList<Pessoa> listarPessoa() {
		// Criando um objeto para acessar a class JavaBeans
		ArrayList<Pessoa> pessoa = new ArrayList<>();

		String read = "SELECT * FROM pessoa order by id_pessoa;";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read);
			ResultSet rs = pst.executeQuery();
			// enquanto houver dados
			while (rs.next()) {
				// variaveis de apoio que recebe dados do banco
				String idcon = rs.getString(1);
				String nome = rs.getString(2);
				String cpf = rs.getString(3);
				String telefone = rs.getString(4);

				// populando o ArrayList
				pessoa.add(new Pessoa(idcon, nome, cpf, telefone));
			}
			con.close();
			return pessoa;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	// CRUD UPDATE viagem

	// selecionar
	public void selecionarViagem(Viagem viagem) {
		String read2 = "SELECT * FROM viagem WHERE id_viagem = ?;";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read2);
			pst.setString(1, viagem.getIdcon());
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				// setar as variaves JavaBeans
				viagem.setIdcon(rs.getString(1));
				viagem.setOrigem(rs.getString(2));
				viagem.setDestino(rs.getString(3));
				viagem.setData_ida(rs.getString(4));
				viagem.setData_volta(rs.getString(5));
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// CRUD UPDATE pessoa

	// selecionar
	public void selecionarPessoa(Pessoa pessoa) {
		String read2 = "SELECT * FROM pessoa WHERE id_pessoa = ?;";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read2);
			pst.setString(1, pessoa.getIdcon());
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				// setar as variaves Pessoa
				pessoa.setIdcon(rs.getString(1));
				pessoa.setNome(rs.getString(2));
				pessoa.setCpf(rs.getString(3));
				pessoa.setTelefone(rs.getString(4));
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// editar viagem
	public void alterarViagem(Viagem viagem) {
		String create = "UPDATE viagem SET origem =?, destino =?, data_ida =?, data_volta =? WHERE id_viagem = ?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(create);
			pst.setString(1, viagem.getOrigem());
			pst.setString(2, viagem.getDestino());
			pst.setString(3, viagem.getData_ida());
			pst.setString(4, viagem.getData_volta());
			pst.setString(5, viagem.getIdcon());

			pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// editar pessoa
	public void alterarPessoa(Pessoa pessoa) {
		String create = "UPDATE pessoa SET nome =?, cpf =?, telefone =? WHERE id_pessoa = ?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(create);
			pst.setString(1, pessoa.getNome());
			pst.setString(2, pessoa.getCpf());
			pst.setString(3, pessoa.getTelefone());
			pst.setString(4, pessoa.getIdcon());

			pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// CRUD DELETE viagem

	public void deletarViagem(Viagem viagem) {
		String delete = "DELETE FROM viagem WHERE id_viagem = ?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(delete);
			pst.setString(1, viagem.getIdcon());

			pst.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// CRUD DELETE pessoa

	public void deletarPesssoa(Pessoa pessoa) {
		String delete = "DELETE FROM pessoa WHERE id_pessoa = ?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(delete);
			pst.setString(1, pessoa.getIdcon());

			pst.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
