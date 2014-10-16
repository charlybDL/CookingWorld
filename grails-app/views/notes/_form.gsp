<%@ page import="cooking.world.Notes" %>



<div class="fieldcontain ${hasErrors(bean: notesInstance, field: 'noteClarete', 'error')} required">
	<label for="noteClarete">
		<g:message code="notes.noteClarete.label" default="Note Clarete" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="noteClarete" type="number" min="0" max="5" value="${notesInstance.noteClarete}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: notesInstance, field: 'noteGout', 'error')} required">
	<label for="noteGout">
		<g:message code="notes.noteGout.label" default="Note Gout" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="noteGout" type="number" min="0" max="5" value="${notesInstance.noteGout}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: notesInstance, field: 'noteDifficulte', 'error')} required">
	<label for="noteDifficulte">
		<g:message code="notes.noteDifficulte.label" default="Note Difficulte" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="noteDifficulte" type="number" min="0" max="5" value="${notesInstance.noteDifficulte}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: notesInstance, field: 'recette', 'error')} required">
	<label for="recette">
		<g:message code="notes.recette.label" default="Recette" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="recette" name="recette.id" from="${cooking.world.Recette.list()}" optionKey="id" required="" value="${notesInstance?.recette?.id}" class="many-to-one"/>

</div>

