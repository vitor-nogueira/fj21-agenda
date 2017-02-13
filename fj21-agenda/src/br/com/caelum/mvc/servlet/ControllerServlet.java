package br.com.caelum.mvc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.mvc.logica.Logica;

@WebServlet("/mvc") //indicando onde essa servlet vai iniciar = /mvc
public class ControllerServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String parametro = request.getParameter("logica"); //recebe da página que fez a requisição qual a lógica será chamada.
		String nomeDaClasse = "br.com.caelum.mvc.logica." + parametro; //Essa lógica será o nome da classe onde o modelo de negocio está implementado
															// Exemplo: logica=MostraContatoLogic

		try {
			Class classe = Class.forName(nomeDaClasse);

			Logica logica = (Logica) classe.newInstance();
			String pagina = logica.executa(request, response);

			request.getRequestDispatcher(pagina).forward(request, response);

		} catch (Exception e) {
			throw new ServletException("A lógica de negocios causou uma exceção", e);
		}
	}
}
