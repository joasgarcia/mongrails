
<%@ page import="com.elasticevent.domain.Organizer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organizer.label', default: 'Organizer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-organizer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-organizer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list organizer">
			
				<g:if test="${organizerInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="organizer.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:formatDate date="${organizerInstance?.birthday}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="organizer.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${organizerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizerInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="organizer.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${organizerInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizerInstance?.ocupation}">
				<li class="fieldcontain">
					<span id="ocupation-label" class="property-label"><g:message code="organizer.ocupation.label" default="Ocupation" /></span>
					
						<span class="property-value" aria-labelledby="ocupation-label"><g:fieldValue bean="${organizerInstance}" field="ocupation"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:organizerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${organizerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
