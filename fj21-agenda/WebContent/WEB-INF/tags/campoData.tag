<%@ tag language="java" pageEncoding="UTF-8"%>


<%@attribute name ="label" required="true"%>
<%@attribute name ="id" required="true"%>
<%@attribute name ="value" required="false"%>

<label>${label}</label>
<input type="text" name="${id}" id="${id}" value ="${value}" /> 

<!-- id serve para ser recuperado no server -->


<!-- Porcao javascript para inserir a data do calendario no campo-->
<script>
$("#${id}").datepicker({dateFormat:'dd/mm/yy'});
</script>

