<%@ page import="cooking.world.Utilisateur" %>

<div align="center">
    <label for="login">
        <g:message code="session.login.label" default="login"/>
    </label>

    <div  ${hasErrors(bean: sessionInstance, field: 'pseudo', 'error')} ">
        <g:textField name="login" value="${sessionInstance?.pseudo}"/>
    </div>
    <label for="password">
        <g:message code="session.password.label" default="mot de passe"/>

    </label>
    <div  ${hasErrors(bean: sessionInstance, field: 'motDePasse', 'error')} ">
        <input name="motDePasse" type="motDePasse" value="${sessionInstance?.motDePasse}"/>
    </div>
</div>