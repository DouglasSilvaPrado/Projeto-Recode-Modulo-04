package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import model.DAO;
import model.Viagem;
import model.Pessoa;


@WebServlet(urlPatterns = { "/Controller", "/main", "/mainPessoa", "/insert", "/insertPessoa", "/select", "/selectPessoa", "/update", "/updatePessoa", "/delete", "/deletePessoa", "/report" })
public class Controller extends HttpServlet {
	
	DAO dao = new DAO();
	
	Viagem viagem = new Viagem();
	
	Pessoa pessoa = new Pessoa();
	
	private static final long serialVersionUID = 1L;

	public Controller() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		
		if (action.equals("/main")) {
			viagens(request, response);
		}else if (action.equals("/mainPessoa")) {
			pessoas(request, response);
		}
		else if (action.equals("/insert")) {
			novaViagem(request, response);
		}else if (action.equals("/insertPessoa")) {
			novaPessoa(request, response);
		}
		else if (action.equals("/select")) {
			listarViagem(request, response);
		}else if (action.equals("/selectPessoa")) {
			listarPessoa(request, response);
		}
		else if (action.equals("/update")) {
			editarViagem(request, response);
		}else if (action.equals("/updatePessoa")) {
			editarPessoa(request, response);
		}
		else if (action.equals("/delete")) {
			removerViagem(request, response);
		}else if (action.equals("/deletePessoa")) {
			removerPessoa(request, response);
		}
		else if (action.equals("/report")) {
			gerarRelatorio(request, response);
		}else {
			response.sendRedirect("index.html");
		}
		
		dao.test();
	}

	
	
	// Listar viagens
	protected void viagens(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Criando um objeto que ira receber os dados JavaBeans
		ArrayList<Viagem> lista = dao.listar();
		// Encamihar a lista ao doc viagem.jsp
		request.setAttribute("viagens", lista);
		RequestDispatcher rd = request.getRequestDispatcher("viagem.jsp");
		rd.forward(request, response);	

	}
	
	// Listar pessoas
	protected void pessoas(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Criando um objeto que ira receber os dados Pessoas
		ArrayList<Pessoa> lista = dao.listarPessoa();
		// Encamihar a lista ao doc pessoa.jsp
		request.setAttribute("pessoas", lista);
		RequestDispatcher rd = request.getRequestDispatcher("pessoa.jsp");
		rd.forward(request, response);			

	}

	
	// Nova Viagem
	
	protected void novaViagem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// set variaves
		
		String origem = request.getParameter("origem");
		String destino = request.getParameter("destino");
		String data_ida = request.getParameter("data_ida");
		String data_volta = request.getParameter("data_volta");
		
		viagem.setOrigem(origem);
		viagem.setDestino(destino);
		viagem.setData_ida(data_ida);
		viagem.setData_volta(data_volta);
	
		// invocar o metodo inserirViagem passando o objeto Viagem
		dao.inseri(viagem);
		// redirecionar para o documento viagem.jsp
		response.sendRedirect("main");
		
		
	}
	
	// Nova Pessoa 
	
		protected void novaPessoa(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			// set variaves
			
			String nome = request.getParameter("nome");
			String cpf = request.getParameter("cpf");
			String telefone = request.getParameter("telefone");
			
			
			pessoa.setNome(nome);
			pessoa.setCpf(cpf);
			pessoa.setTelefone(telefone);
			
		
			// invocar o metodo inserirpessoa passando o objeto pessoa
			dao.inseriPessoa(pessoa);
			// redirecionar para o documento pessoa.jsp
			response.sendRedirect("mainPessoa");		
		}

	
	// listar viagens
	protected void listarViagem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// recebimento do id do Viagem que sera editado
		String idcon = request.getParameter("idcon");
		// setar a variavel JavaBeans
		viagem.setIdcon(idcon);
		// executar o metodo selecionar Viagem
		dao.selecionarViagem(viagem);
		// setara os atributos do form com o conteudo do JavaBeans
		request.setAttribute("idcon", viagem.getIdcon());
		request.setAttribute("origem", viagem.getOrigem());
		request.setAttribute("destino", viagem.getDestino());
		request.setAttribute("data_ida", viagem.getData_ida());
		request.setAttribute("data_volta", viagem.getData_volta());
		// encaminhar ao doc editar.jsp
		RequestDispatcher rd = request.getRequestDispatcher("editar.jsp");
		rd.forward(request, response);
	}
	
	// listar pessoas
		protected void listarPessoa(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			// recebimento do id do Pessoa que sera editado
			String idcon = request.getParameter("idcon");
			// setar a variavel Pessoa
			pessoa.setIdcon(idcon);
			// executar o metodo selecionar Pessoa
			dao.selecionarPessoa(pessoa);
			// setar os atributos do form com o conteudo do JavaBeans
			request.setAttribute("idcon", pessoa.getIdcon());
			request.setAttribute("nome", pessoa.getNome());
			request.setAttribute("cpf", pessoa.getCpf());
			request.setAttribute("telefone", pessoa.getTelefone());
	
			// encaminhar ao doc editarPessoa.jsp
			RequestDispatcher rd = request.getRequestDispatcher("editarPessoa.jsp");
			rd.forward(request, response);
		}

	//editar viagem
	protected void editarViagem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// setar as variaveis JavaBeans
		viagem.setIdcon(request.getParameter("idcon"));
		viagem.setOrigem(request.getParameter("origem"));
		viagem.setDestino(request.getParameter("destino"));
		viagem.setData_ida(request.getParameter("data_ida"));
		viagem.setData_volta(request.getParameter("data_volta"));
		// excutar o metodo alterar viagem
		dao.alterarViagem(viagem);
		// redirecionar para doc viagem.jsp atualizando dados
		response.sendRedirect("main");

	} 
	
	//editar pessoa
		protected void editarPessoa(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			// setar as variaveis Pessoa
			pessoa.setIdcon(request.getParameter("idcon"));
			pessoa.setNome(request.getParameter("nome"));
			pessoa.setCpf(request.getParameter("cpf"));
			pessoa.setTelefone(request.getParameter("telefone"));
			// excutar o metodo alterar pessoa
			dao.alterarPessoa(pessoa);
			// redirecionat para doc pessoa.jsp atualizando dados
			response.sendRedirect("mainPessoa");

		} 
	
	
	// remover viagem
	protected void removerViagem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//recebimento do id do viagem
		String idcon = request.getParameter("idcon");
		// setar a variavel idcon javaBeans
		viagem.setIdcon(idcon);
		// executar metodo deletar viagem
		dao.deletarViagem(viagem);
		// redirecionat para doc viagem.jsp atualizando dados
		response.sendRedirect("main");

	}
	
	// remover pessoa
		protected void removerPessoa(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			//recebimento do id do pessoa
			String idcon = request.getParameter("idcon");
			// setar a variavel idcon pessoa
			pessoa.setIdcon(idcon);
			// executar metodo deletar pessoa
			dao.deletarPesssoa(pessoa);
			// redirecionat para doc viagem.jsp atualizando dados
			response.sendRedirect("mainPessoa");

		}
	
	
	
	
	// Gerar relatorio PDF
		protected void gerarRelatorio(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			Document documento = new Document();
			try {
				//tipo conteudo
				response.setContentType("apllication/pdf");
				//nome do documento
				response.addHeader("Content-Disposition", "inline; filename=" + "viagens.pdf");
				//criar documento
				PdfWriter.getInstance(documento, response.getOutputStream());
				//abrir documento
				documento.open();
				documento.add(new Paragraph("Lista de Viagens:"));
				documento.add(new Paragraph(" "));
				//criar tabela
				PdfPTable tabela = new PdfPTable(4);
				//cabecalho
				PdfPCell col1 = new PdfPCell(new Paragraph("Origem"));
				PdfPCell col2 = new PdfPCell(new Paragraph("Destino"));
				PdfPCell col3 = new PdfPCell(new Paragraph("Data de Ida"));
				PdfPCell col4 = new PdfPCell(new Paragraph("Data de Volta"));
				tabela.addCell(col1);
				tabela.addCell(col2);
				tabela.addCell(col3);
				tabela.addCell(col4);
				
				//popular a tabela
				ArrayList<Viagem> lista = dao.listar();
				for (int i = 0; i < lista.size(); i++) {
					tabela.addCell(lista.get(i).getOrigem());
					tabela.addCell(lista.get(i).getDestino());
					tabela.addCell(lista.get(i).getData_ida());
					tabela.addCell(lista.get(i).getData_volta());
					
				}
				documento.add(tabela);
				documento.close();
			} catch (Exception e) {
				System.out.println(e);
				documento.close();
			}
		}

}
