
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Contatos com JSTL</title>
</head>
<body>
	<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
	<c:import url = "cabecalho.jsp"  />
			
	<table>
	<!--  Criando o cabecalho das colunas -->		
		<tr>
			<td>ID</td>
			<td>Nome</td>
			<td>Email</td>
			<td>Endereco</td>
			<td>Data Nascimento</td>
			<td>Remove?</td>
			<td>Alterar?</td>
		</tr>
		<!--  Percorre lista contatos montando as linhas da tabela. Atribui cada
		item da lista a uma variável contato -->
		
		<c:forEach var="contato" items="${contatos}">
			<tr>		
				<td> ${contato.id}</td>
				<td> ${contato.nome}</td>
				<td> 
					<c:choose> 
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:otherwise>
							Email não informado
						</c:otherwise>
					</c:choose>
				</td>
				<td> ${contato.endereco}</td>
				<td> <fmt:formatDate value="${contato.dataNascimento.time}"
					pattern="dd/MM/yyyy" />
				</td>
				<td> 
					<a href= "mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
					<td> 
					<a href= "mvc?logica=MostraContatoLogic&id=${contato.id}">Alterar</a>
				</td>
			</tr>
			</c:forEach>	
	</table>
	<c:import url="rodape.jsp" />
</body>
</html>