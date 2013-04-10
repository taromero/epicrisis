<div id="encefalopatiaHepatica" class="span4 container" style="border: 1px solid #ccc;">
	<blockquote>
		<strong><p class="lead">Encefalopatia Hepatica <a class="btn" href="javascript:toggleEHForm()"><i class="icon-plus"></i></a></p></strong>
	</blockquote>
	<div class="content" <g:if test="${ epicrisis?.encefalopatiaHepatica == null }"> style="display:none" </g:if>>
		<div>
			Grado
			<g:field type="number" min='1' max='4' name="encefalopatiaHepatica.grado" value="${ epicrisis?.encefalopatiaHepatica?.grado }" style="height:30px; width:40px"/>
		</div>
		<div>
			Causa
			<input type="text" name="encefalopatiaHepatica.causa" value="${ epicrisis?.encefalopatiaHepatica?.causa }"/>
		</div>
		<div>
			Tratamiento
			<input type="text" name="encefalopatiaHepatica.tratamiento" value="${ epicrisis?.encefalopatiaHepatica?.tratamiento }"/>
		</div>
		<div>
			Reversion
			<g:checkBox name="encefalopatiaHepatica.reversion" value="${epicrisis?.encefalopatiaHepatica?.reversion}"/>
		</div>
	</div>
</div>