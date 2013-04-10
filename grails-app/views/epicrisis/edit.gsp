
<html>
<head>
	<r:require modules="bootstrap"/>
	<g:javascript library="jquery"/>
	<g:javascript library="jquery-ui"/>
	<r:require modules="application"/>
	<r:layoutResources />
	<script type="text/javascript">
		var drogasList = ${ drogas };
	</script>
	<style>
		input[type=text] {
			height: 30px;
		}
		
		.close-red {
			color:red;
			opacity:0.35;
		}
		select {
			width: 150px;
		}

		input.duracion {
			width: 65px;
		}
	</style>
</head>
<body>

<g:form method="post" >
	<div class="row-fluid">
	<g:render template="procedimientoInvasivo"/>
	<g:render template="hemorragiaDigestivaAlta"/>
	<g:render template="encefalopatiaHepatica"/>
</div>
	<fieldset class="buttons">
		<input type="button" value="guardar" class="save btn btn-success btn-large" id="save"/>
		<input type="button" value="cancelar" class="save btn btn-danger btn-large" id="cancelar"/>
		<g:actionSubmit class="save btn btn-success btn-large" action="update" value="guardar" id="savePosta" style="display:none"/>
		<g:actionSubmit class="save btn btn-danger btn-large" action="edit" value="cancelar" id="abortPosta" style="display:none"/>
	</fieldset>
	<g:hiddenField name="id" value="${epicrisis?.id}" />
	<g:render template="/modals/aceptarModal"/>
	<g:render template="/modals/cancelarModal"/>
</g:form>
	<r:layoutResources />
</body>
</html>