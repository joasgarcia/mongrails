
<%@ page import="com.elasticevent.domain.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li>
					<g:form action="index">
						<input type="text" id="name" name="name" placeholder="Nome do evento" value="${params.name}"/>
						<button type="submit"/>Pesquisar</button>
					</g:form>
				</li>
			</ul>
		</div>

		<div id="list-event" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="date" title="${message(code: 'event.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="ticketValue" title="${message(code: 'event.ticketValue.label', default: 'Ticket Value')}" />
					
						<g:sortableColumn property="ticketsAvailables" title="${message(code: 'event.ticketsAvailables.label', default: 'Tickets Availables')}" />
					
						<g:sortableColumn property="ticketsSold" title="${message(code: 'event.ticketsSold.label', default: 'Tickets Sold')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventInstanceList}" status="i" var="eventInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "date")}</g:link></td>
					
						<td>${fieldValue(bean: eventInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "ticketValue")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "ticketsAvailables")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "ticketsSold")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
