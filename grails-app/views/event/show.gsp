
<%@ page import="com.elasticevent.domain.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1>Evento ${eventInstance?.name}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="event.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${eventInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="event.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${eventInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.ticketValue}">
				<li class="fieldcontain">
					<span id="ticketValue-label" class="property-label"><g:message code="event.ticketValue.label" default="Ticket Value" /></span>
					
						<span class="property-value" aria-labelledby="ticketValue-label"><g:fieldValue bean="${eventInstance}" field="ticketValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.ticketsAvailables}">
				<li class="fieldcontain">
					<span id="ticketsAvailables-label" class="property-label"><g:message code="event.ticketsAvailables.label" default="Tickets Availables" /></span>
					
						<span class="property-value" aria-labelledby="ticketsAvailables-label"><g:fieldValue bean="${eventInstance}" field="ticketsAvailables"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.ticketsSold}">
				<li class="fieldcontain">
					<span id="ticketsSold-label" class="property-label"><g:message code="event.ticketsSold.label" default="Tickets Sold" /></span>
					
						<span class="property-value" aria-labelledby="ticketsSold-label"><g:fieldValue bean="${eventInstance}" field="ticketsSold"/></span>
					
				</li>
				</g:if>
			
			</ol>

			<g:render template="/event/templates/organizers"/>
			<g:render template="/event/templates/speakers"/>
			<g:render template="/event/templates/participants"/>

			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
