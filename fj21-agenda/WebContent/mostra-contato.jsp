<%@taglib tagdir="/WEB-INF/tags" prefix="tag" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<!--  importa o estilo css para Jquery, 
	javascript para jquery 
	e o calendario para jquery-->
	
	<link href="css/jquery.css" rel="stylesheet"> 
	<script src="js/jquery.js"></script> 
	<script src="js/jquery-ui.js"></script>
	
	
<meta charset="UTF-8">
<title>Mostra Contato</title>
</head>
	<body>
		<c:import url = "cabecalho.jsp"  />
		<h1>Mostra Contato via JSP</h1>
		<hr/>
		<form action = "mvc" method ="post"><br/> <!-- pra onde vai?? Para o controler que está referenciado como "mvc"-->
			<input type="hidden" name="logica" value= "AlteraContatoLogic" /> <!-- PAssa como hidden o nome da logica que o controle deve executar-->
			<input type="hidden" name="id" value= "${contato.id}" /> <!-- passa o id como hidden que será alterado -->"
			<tag:labelEInput name="nome" label="Nome: " value="${contato.nome}"/><br/><br/>			
			<tag:labelEInput name="email" label="Email: " value="${contato.email}"/><br/><br/>
			<tag:labelEInput name="endereco" label="Endereço: " value="${contato.endereco}"/><br/><br/>
			<tag:campoData label="Data de Nascimento" id="dataNascimento" value="${contato.dataNascimento.time }" /><br/><br/>
			<input type ="submit" value = "Gravar" />
		</form>
		
		<c:import url="rodape.jsp" />
	</body>
</html>