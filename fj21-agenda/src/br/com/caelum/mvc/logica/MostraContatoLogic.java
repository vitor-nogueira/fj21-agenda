package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class MostraContatoLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		ContatoDao dao = new ContatoDao(); //Cria um DAO para conexao no banco
		Long id = Long.parseLong(req.getParameter("id")); //recebe o ID do contato selecionado na requisição
		Contato contato = dao.busca(id);	//busca o id do contato com o método busca
		req.setAttribute("contato", contato); //seta o objeto contato como atributo para abrir na página 
		return "mostra-contato.jsp";
	}
	

}
