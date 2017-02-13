<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.caelum.agenda.dao.*"%>
<%@page import="br.com.caelum.agenda.modelo.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<html>
<head>
<title>Lista de Contatos</title>
</head>
<body>
	<h1>Lista de Contatos</h1>
	<table>
		<tr>
			<td>Nome</td>
			<td>Email</td>
			<td>Endereco</td>
			<td>Data Nascimento</td>
		</tr>
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		
		for (Contato contato : contatos){
		%>
		
		<tr>
			<td> <%=contato.getNome() %></td>
			<td> <%=contato.getEmail() %></td>
			<td> <%=contato.getEndereco() %></td>
			<td> <%=sdf.format(contato.getDataNascimento().getTime()) %></td>
		</tr>
		
		<% } %>	
		
	</table>

</body>
</html>