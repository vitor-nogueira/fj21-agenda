<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bem Vindo ao FJ21 </title>
</head>
<body>

	<%--coment�rio em JSP aqui: Nossa Primeira p�gina JSP --%>
	<%
		String mensagem = "Bem vindo ao sistema de agenda do FJ21";
	%>
	<% out. println(mensagem);%> <%--isso � impresso na p�gina --%>
	
	<br/>
	
	<%
		String desenvolvido = "Desenvolvido por Vitor Nogueira"; //Porcao JAVA
	%>
	
	<%= desenvolvido%> <%--isso � impresso na p�gina --%>
	
	<br/>
	
	<%
		System.out.println ("Tudo foi executado"); //syso vai pro console
	%>
	
</body>
</html>