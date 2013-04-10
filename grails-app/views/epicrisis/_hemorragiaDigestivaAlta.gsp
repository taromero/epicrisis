<div name="hemorragiaDigestivaAlta" class="span4 container" style="border: 1px solid #ccc;">
	<blockquote>
		<strong><p class="lead">Hemorragia Digestiva Alta</p></strong>
	</blockquote>
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
		Drogas <a class="btn" href="javascript:agregarDroga()"><i class="icon-plus"></i></a>
		<table id="drogas" class="table table-striped table-bordered table-hover table-condensed">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Duracion</th>
					<th></th>
				</tr>
			</thead>
			<tbody id="drogasTBody">
				<g:each in="${epicrisis?.hemorragiaDigestivaAlta?.drogas}" status="i" var="droga">
					<tr class="droga" id="droga${i}">
						<td>
							<g:field type="text" name="hemorragiaDigestivaAlta.drogas.nombre" value="${droga.nombre}"/>
						</td>
						<td>
							<g:field type="text" name="hemorragiaDigestivaAlta.drogas.duracion" value="${droga.duracion}" class="duracion"/>
						</td>
						<td>
							<input type="button" onclick="borrarDroga(${i})" value="x" class="close close-red"/>
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
</div>