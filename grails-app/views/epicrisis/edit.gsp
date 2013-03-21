
<html>
<head>
	<g:javascript library="jquery"/>
	<r:require modules="handlers"/>
	<r:layoutResources />
</head>
<body>

<g:form method="post" >
	<div style="float:left" name="procedimientoInvasivo">
		<div>
			Acceso Venoso
			<g:select name="procedimientoInvasivo.accesoVenoso" from="${epicrisis?.procedimientoInvasivo?.constraints?.accesoVenoso?.inList}" value="${epicrisis?.procedimientoInvasivo?.accesoVenoso}"/>
		</div>
		<div>
			Veda
			<g:select name="procedimientoInvasivo.veda" from="${epicrisis?.procedimientoInvasivo?.constraints?.veda?.inList}" value="${epicrisis?.procedimientoInvasivo?.veda}"/>
		</div>
		<div>
			VCC
			<g:select name="procedimientoInvasivo.vcc" from="${epicrisis?.procedimientoInvasivo?.constraints?.vcc?.inList}" value="${epicrisis?.procedimientoInvasivo?.vcc}"/>
		</div>
		<div>
			UTI
			<g:checkBox name="procedimientoInvasivo.uti" value="${epicrisis?.procedimientoInvasivo?.uti}"/>
		</div>
		<div>
			Otros <input type="button" onclick="agregarOtrosAProcedimientoInvasivo()">
			<ul id='procedimientoInvasivoOtrosUL'>
				<g:each in="${epicrisis?.procedimientoInvasivo?.otros}" status="i" var="otro">
					<li id="otros${i}" class="otros">
						<g:field name='procedimientoInvasivo.otros' value='${otro}'/>
						<input type="button" onclick="borrarOtrosaPI(${i})"/>
					</li>
				</g:each>
			</ul>
		</div>
	</div>
	<div style="float:left" name="hemorragiaDigestivaAlta">
		<div>
			Variceral
			<g:checkBox name="hemorragiaDigestivaAlta.variceral" value="${epicrisis?.hemorragiaDigestivaAlta?.variceral}"/>
		</div>
		<div>
			Antibiotico Profilactico:
			<g:select name="hemorragiaDigestivaAlta.antibioticoProfilactico" from="${epicrisis?.hemorragiaDigestivaAlta?.constraints?.antibioticoProfilactico?.inList}" value="${epicrisis?.hemorragiaDigestivaAlta?.antibioticoProfilactico}"/>
		</div>
		<fieldset class="form">
			Tratamiento Endoscopico:
			<ul id="tratamientoEndoscopico">
				<li>
					Tratamiento
					<g:select name="hemorragiaDigestivaAlta.tratamientoEndoscopico.tratamiento" from="${epicrisis?.hemorragiaDigestivaAlta?.tratamientoEndoscopico?.constraints?.tratamiento?.inList}" value="${epicrisis?.hemorragiaDigestivaAlta?.tratamientoEndoscopico?.tratamiento}"/>
				</li>
				<li>
					Sangrado en la Endoscopia
					<g:checkBox name="hemorragiaDigestivaAlta.tratamientoEndoscopico.sangradoEnLaEndoscopia" value="${epicrisis?.hemorragiaDigestivaAlta?.tratamientoEndoscopico?.sangradoEnLaEndoscopia}"/>		
				</li>
				<li>
					Balon de SB
					<g:checkBox name="hemorragiaDigestivaAlta.tratamientoEndoscopico.balonDeSB" value="${epicrisis?.hemorragiaDigestivaAlta?.tratamientoEndoscopico?.balonDeSB}"/>		
				</li>
				<li>
					Control de hemorragia a 6 horas
					<g:checkBox name="hemorragiaDigestivaAlta.tratamientoEndoscopico.controlDeHemorragiaA6Horas" value="${epicrisis?.hemorragiaDigestivaAlta?.tratamientoEndoscopico?.controlDeHemorragiaA6Horas}"/>		
				</li>
				<li>
					Resangrado al quinto dia
					<g:checkBox name="hemorragiaDigestivaAlta.tratamientoEndoscopico.resangradoAl5toDia" value="${epicrisis?.hemorragiaDigestivaAlta?.tratamientoEndoscopico?.resangradoAl5toDia}"/>		
				</li>
			</ul>
		</fieldset>
		<div>
			Drogas <input type="button" onclick="agregarDroga()">
			<table id="drogas">
				<thead>
					<th>Nombre</th>
					<th>Duracion</th>
				</thead>
				<tbody id="drogasTBody">
					<g:each in="${epicrisis?.hemorragiaDigestivaAlta?.drogas}" status="i" var="droga">
						<tr class="droga" id="droga${i}">
							<td>
								<g:field name="hemorragiaDigestivaAlta.drogas.nombre" value="${droga.nombre}"/>
							</td>
							<td>
								<g:field name="hemorragiaDigestivaAlta.drogas.duracion" value="${droga.duracion}"/>
							</td>
							<td>
								<input type="button" onclick="borrarDroga(${i})"/>
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
		</div>
	</div>
	<fieldset class="buttons">
		<g:actionSubmit class="save" action="update" value="guardar" />
		<g:actionSubmit class="save" action="edit" value="cancelar" />
	</fieldset>
	<g:hiddenField name="id" value="${epicrisis?.id}" />
</g:form>
	<r:layoutResources />
</body>
</html>