<%@ tag language="java" pageEncoding="UTF-8"%>

<%@attribute name ="name" required="true"%>
<%@attribute name ="label" required="true"%>
<%@attribute name ="value" required="false"%>


<label>${label}</label>
<input type="text" name="${name}" value="${value}"/> 


<!-- name serve 
para ser recuperado no server -->