
<%@ page import="cooking.world.Notes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notes.label', default: 'Notes')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-notes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-notes" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="noteClarete" title="${message(code: 'notes.noteClarete.label', default: 'Note Clarete')}" />
					
						<g:sortableColumn property="noteGout" title="${message(code: 'notes.noteGout.label', default: 'Note Gout')}" />
					
						<g:sortableColumn property="noteDifficulte" title="${message(code: 'notes.noteDifficulte.label', default: 'Note Difficulte')}" />
					
						<th><g:message code="notes.evaluateur.label" default="Evaluateur" /></th>
					
						<th><g:message code="notes.recette.label" default="Recette" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${notesInstanceList}" status="i" var="notesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${notesInstance.id}">${fieldValue(bean: notesInstance, field: "noteClarete")}</g:link></td>
					
						<td>${fieldValue(bean: notesInstance, field: "noteGout")}</td>
					
						<td>${fieldValue(bean: notesInstance, field: "noteDifficulte")}</td>
					
						<td>${fieldValue(bean: notesInstance, field: "evaluateur")}</td>
					
						<td>${fieldValue(bean: notesInstance, field: "recette")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${notesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
