<div name="procedimientoInvasivo" class="span3 container" style="border: 1px solid #ccc;">
	<blockquote>
		<strong><p class="lead">Procedimiento Invasivo</p></strong>
	</blockquote>
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
		Otros <a class="btn" href="javascript:agregarOtrosAProcedimientoInvasivo()"><i class="icon-plus"></i></a>
		<table id='procedimientoInvasivoOtros' class="table table-striped table-bordered table-hover table-condensed">
			<g:each in="${epicrisis?.procedimientoInvasivo?.otros}" status="i" var="otro">
				<tr id="otros${i}" class="otros">
					<td>
						<g:field type="text" name='procedimientoInvasivo.otros' value='${otro}'/>
					</td>
					<td>
						<input type="button" onclick="borrarOtrosaProcedimientoInvasivo(${i})" value="x" class="close close-red"/>
					</td>
				</tr>
			</g:each>
		</table>
	</div>
</div>