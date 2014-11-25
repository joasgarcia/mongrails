
<%@ page import="com.elasticevent.domain.Participant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'participant.label', default: 'Participant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-participant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-participant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list participant">
			
				<g:if test="${participantInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="participant.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:formatDate date="${participantInstance?.birthday}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="participant.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${participantInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="participant.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${participantInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.ocupation}">
				<li class="fieldcontain">
					<span id="ocupation-label" class="property-label"><g:message code="participant.ocupation.label" default="Ocupation" /></span>
					
						<span class="property-value" aria-labelledby="ocupation-label"><g:fieldValue bean="${participantInstance}" field="ocupation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="participant.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${participantInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:participantInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${participantInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
