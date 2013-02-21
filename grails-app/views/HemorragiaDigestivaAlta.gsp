<html>
<head>
	
</head>
<body>
	<div>
		<label for="variceral">
			<g:message/>
		</label>
		<g:checkbox name="variceral" value="epicrisis.hemorragiaAltaDigestiva.variceral"/>
	</div>
	<div>
		<table id="drogas">
			<thead>
				<th>Nombre</th>
				<th>Duracion</th>
			</thead>
			<tbody>
				<g:each in="${epicrisis.hemorragiaAltaDigestiva?.droga}" status="i" var="droga">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td class="drogas">
							<g:link controller="jugador" action="show" id="${jugador.id}" name="${jugador.id}">
								${jugador.nombre + ' ' + jugador.apellido }
							</g:link>
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
</body>
</html>