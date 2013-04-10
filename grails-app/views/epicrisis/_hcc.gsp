<div id="hcc" class="span4 container" style="border: 1px solid #ccc;">
	<blockquote>
		<strong><p class="lead">HCC <a class="btn" href="javascript:toggleForm($('#hcc'))"><i class="icon-plus"></i></a></p></strong>
	</blockquote>
	<div class="content" <g:if test="${ epicrisis?.hcc == null }"> style="display:none" </g:if>>
		Estadío
		<input type="text" name="hcc.estadio" value="${ epicrisis?.hcc?.estadio }"/>
	</div>
</div>