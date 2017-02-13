package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

//implementação da lógica (Model)

public class RemoveContatoLogic implements Logica{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		long id = Long.parseLong(request.getParameter("id"));
		Contato contato = new Contato();
		contato.setId(id);
		
		
		//busca a conexao pendurada na requisicao
		//ContatoDao dao = new ContatoDao();
		Connection connection = (Connection) request.getAttribute ("conexao");
		
		ContatoDao dao = new ContatoDao(connection);
		
		dao.exclui(contato);
		System.out.println("Excluindo o contato...");
		
		return "mvc?logica=ListaContatosLogic";
	}
	

}
