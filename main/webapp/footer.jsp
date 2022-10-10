<script src="bootstrap/javascript/bootstrap.bundle.min.js"></script>

<script>
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
</script>

<script>
function cerrarSesion() {
	<% 
	HttpSession sesion = request.getSession();
	sesion.setAttribute("tipoUsuario","Visitante");
	%>
	alert("Sesion cerrada correctamente");
}
</script>


<script>
function mostrarNotificacion() {

	<% 
	HttpSession sesion3 = request.getSession();
	String mensaje = (String)sesion3.getAttribute("mensaje");
	%>

	<%
	if(mensaje != null){
	%>


		alert('<%=mensaje%>');
		
		

	<%}%>
	<% 
	sesion3.setAttribute("mensaje", null);
	%>


}

</script>