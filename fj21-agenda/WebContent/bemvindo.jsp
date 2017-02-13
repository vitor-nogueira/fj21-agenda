<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bem Vindo ao FJ21 </title>
</head>
<body>

	<%--comentário em JSP aqui: Nossa Primeira página JSP --%>
	<%
		String mensagem = "Bem vindo ao sistema de agenda do FJ21";
	%>
	<% out. println(mensagem);%> <%--isso é impresso na página --%>
	
	<br/>
	
	<%
		String desenvolvido = "Desenvolvido por Vitor Nogueira"; //Porcao JAVA
	%>
	
	<%= desenvolvido%> <%--isso é impresso na página --%>
	
	<br/>
	
	<%
		System.out.println ("Tudo foi executado"); //syso vai pro console
	%>
	
</body>
</html>