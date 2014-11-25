
<%@ page import="com.elasticevent.domain.Organizer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organizer.label', default: 'Organizer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-organizer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-organizer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="birthday" title="${message(code: 'organizer.birthday.label', default: 'Birthday')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'organizer.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="nationality" title="${message(code: 'organizer.nationality.label', default: 'Nationality')}" />
					
						<g:sortableColumn property="ocupation" title="${message(code: 'organizer.ocupation.label', default: 'Ocupation')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${organizerInstanceList}" status="i" var="organizerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${organizerInstance.id}">${fieldValue(bean: organizerInstance, field: "birthday")}</g:link></td>
					
						<td>${fieldValue(bean: organizerInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: organizerInstance, field: "nationality")}</td>
					
						<td>${fieldValue(bean: organizerInstance, field: "ocupation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${organizerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
