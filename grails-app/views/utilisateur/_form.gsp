<%@ page import="cooking.world.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'pseudo', 'error')} required">
	<label for="pseudo">
		<g:message code="utilisateur.pseudo.label" default="Pseudo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pseudo" required="" value="${utilisateurInstance?.pseudo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'motDePasse', 'error')} required">
	<label for="motDePasse">
		<g:message code="utilisateur.motDePasse.label" default="Mot De Passe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motDePasse" required="" value="${utilisateurInstance?.motDePasse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'commentaire', 'error')} ">
	<label for="commentaire">
		<g:message code="utilisateur.commentaire.label" default="Commentaire" />
		
	</label>
	<g:select name="commentaire" from="${cooking.world.Commentaire.list()}" multiple="multiple" optionKey="id" size="5" value="${utilisateurInstance?.commentaire*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'recette', 'error')} ">
	<label for="recette">
		<g:message code="utilisateur.recette.label" default="Recette" />
		
	</label>
	<g:select name="recette" from="${cooking.world.Recette.list()}" multiple="multiple" optionKey="id" size="5" value="${utilisateurInstance?.recette*.id}" class="many-to-many"/>

</div>

