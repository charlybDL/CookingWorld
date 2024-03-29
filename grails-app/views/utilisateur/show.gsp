
<%@ page import="cooking.world.Utilisateur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-utilisateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-utilisateur" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list utilisateur">
			
				<g:if test="${utilisateurInstance?.pseudo}">
				<li class="fieldcontain">
					<span id="pseudo-label" class="property-label"><g:message code="utilisateur.pseudo.label" default="Pseudo" /></span>
					
						<span class="property-value" aria-labelledby="pseudo-label"><g:fieldValue bean="${utilisateurInstance}" field="pseudo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.motDePasse}">
				<li class="fieldcontain">
					<span id="motDePasse-label" class="property-label"><g:message code="utilisateur.motDePasse.label" default="Mot De Passe" /></span>
					
						<span class="property-value" aria-labelledby="motDePasse-label"><g:fieldValue bean="${utilisateurInstance}" field="motDePasse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.commentaire}">
				<li class="fieldcontain">
					<span id="commentaire-label" class="property-label"><g:message code="utilisateur.commentaire.label" default="Commentaire" /></span>
					
						<g:each in="${utilisateurInstance.commentaire}" var="c">
						<span class="property-value" aria-labelledby="commentaire-label"><g:link controller="commentaire" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.recette}">
				<li class="fieldcontain">
					<span id="recette-label" class="property-label"><g:message code="utilisateur.recette.label" default="Recette" /></span>
					
						<g:each in="${utilisateurInstance.recette}" var="r">
						<span class="property-value" aria-labelledby="recette-label"><g:link controller="recette" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:utilisateurInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${utilisateurInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
