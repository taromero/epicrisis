<div id="infeccion" class="span4 container" style="border: 1px solid #ccc;">
	<blockquote>
		<strong><p class="lead">Infeccion <a class="btn" href="javascript:toggleForm($('#infeccion'))"><i class="icon-plus"></i></a></p></strong>
	</blockquote>
	<div class="content" <g:if test="${ epicrisis?.infeccion == null }"> style="display:none" </g:if>>
		<div>
			Nombre
			<input type="text" name="infeccion.nombre" value="${ epicrisis?.infeccion?.nombre }"/>
		</div>
		<div>
			Cultivos:
			<table class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<th>Cultivo</th>
					<th>Realizado</th>
					<th>Resultado</th>
				</thead>
				<tbody>
					<tr>
						<td>HEMOCULTIVOS</td>
						<td><g:checkBox class="realizado" id="hemocultivos" value="${epicrisis?.infeccion?.hemocultivos?.positivo != null }"/></td>
						<td><g:checkBox class="resultado" id="hemocultivos" name="infeccion.hemocultivos.positivo" 
								value="${epicrisis?.infeccion?.hemocultivos?.positivo }"/></td>
					</tr>
					<tr>
						<td>UROCULTIVO</td>
						<td><g:checkBox class="realizado" id="urocultivo" value="${epicrisis?.infeccion?.urocultivo?.positivo != null }"/></td>
						<td><g:checkBox class="resultado" id="urocultivo" name="infeccion.urocultivo.positivo" 
								value="${epicrisis?.infeccion?.urocultivo?.positivo }"/></td>
					</tr>
					<tr>
						<td>ASCITIS</td>
						<td><g:checkBox class="realizado" id="ascitis" value="${epicrisis?.infeccion?.ascitis?.positivo != null }"/></td>
						<td><g:checkBox class="resultado" id="ascitis" name="infeccion.ascitis.positivo" 
								value="${epicrisis?.infeccion?.ascitis?.positivo }"/></td>
					</tr>
				</tbody>
			</table>
			<table class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<th>Agregar <a class="btn" href="javascript:agregarCultivo()"><i class="icon-plus"></i></a></th>
					<th>Resultado</th>
				</thead>
				<tbody id="otrosCultivosTBody">
					<g:each in="${epicrisis?.infeccion?.otrosCultivos}" status="i" var="otroCultivo">
						<tr class="otroCultivo" id="otroCultivo${i}">
							<td>
								<g:field type="text" name="infeccion.otroCultivos.nombre" value="${otroCultivo.nombre}"/>
							</td>
							<td>
								<g:field type="text" name="infeccion.otroCultivos.positivo" value="${otroCultivo.positivo}"/>
							</td>
							<td>
								<input type="button" onclick="borrarCultivo(${i})" value="x" class="close close-red"/>
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
			<div>
				Shock Septico
				<g:checkBox name="infeccion.shockSeptico" value="${epicrisis?.infeccion?.shockSeptico }"/>	
			</div>
			<div>
				Curación
				<g:checkBox name="infeccion.curacion" value="${epicrisis?.infeccion?.curacion }"/>
			</div>
		</div>
	</div>
</div>