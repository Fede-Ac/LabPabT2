<script src="bootstrap/javascript/bootstrap.bundle.min.js"></script>

<script>
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
</script>
<!-- 
    <script>
		alert("holaaa");
  		$('#modalClases').on('show.bs.modal', function (event) {
  			alert("hola2");
    	})

    </script>
 -->
