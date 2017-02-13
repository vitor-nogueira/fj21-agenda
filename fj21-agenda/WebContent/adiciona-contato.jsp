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
<title>Adiciona Contato JSP</title>
</head>
	<body>
		<c:import url = "cabecalho.jsp"  />
		<h1>Adiciona Contatos via JSP</h1>
		<hr/>
		<form action = "adicionaContato" method ="post"><br/>
			<tag:labelEInput name="nome" label="Nome: "/><br/><br/>
			<tag:labelEInput name="email" label="Email: "/><br/><br/>
			<tag:labelEInput name="endereco" label="Endereço: "/><br/><br/>
			<tag:campoData label="Data de Nascimento" id="dataNascimento" /><br/><br/>
			<input type ="submit" value = "Gravar" />
		</form>
		
		<!-- Porçao Javascript -->
			<!-- Porçao Javascript que foi incluido na tag
		<script>
		$("#data").datepicker({dateformat:'dd/mm/yy'});		
		</script>
		-->
		
		<c:import url="rodape.jsp" />
	</body>
</html>