
<%@ page import="cooking.world.Notes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notes.label', default: 'Notes')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-notes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-notes" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list notes">
			
				<g:if test="${notesInstance?.noteClarete}">
				<li class="fieldcontain">
					<span id="noteClarete-label" class="property-label"><g:message code="notes.noteClarete.label" default="Note Clarete" /></span>
					
						<span class="property-value" aria-labelledby="noteClarete-label"><g:fieldValue bean="${notesInstance}" field="noteClarete"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notesInstance?.noteGout}">
				<li class="fieldcontain">
					<span id="noteGout-label" class="property-label"><g:message code="notes.noteGout.label" default="Note Gout" /></span>
					
						<span class="property-value" aria-labelledby="noteGout-label"><g:fieldValue bean="${notesInstance}" field="noteGout"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notesInstance?.noteDifficulte}">
				<li class="fieldcontain">
					<span id="noteDifficulte-label" class="property-label"><g:message code="notes.noteDifficulte.label" default="Note Difficulte" /></span>
					
						<span class="property-value" aria-labelledby="noteDifficulte-label"><g:fieldValue bean="${notesInstance}" field="noteDifficulte"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:notesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${notesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
