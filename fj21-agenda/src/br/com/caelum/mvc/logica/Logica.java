package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Criando a interface Logica que obriga a implementação do metodo executa com os parametros descritos
public interface Logica {
	String executa (HttpServletRequest req, HttpServletResponse res) throws Exception;
	
}
