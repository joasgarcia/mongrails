<h1>Participantes</h1>
<g:if test="${eventInstance.participants.size() > 0}">
	<table>
	<thead>
			<tr>
			
				<g:sortableColumn property="birthday" title="${message(code: 'participant.birthday.label', default: 'Birthday')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'participant.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="nationality" title="${message(code: 'participant.nationality.label', default: 'Nationality')}" />
			
				<g:sortableColumn property="ocupation" title="${message(code: 'participant.ocupation.label', default: 'Ocupation')}" />
			
				<g:sortableColumn property="registrationDate" title="${message(code: 'participant.registrationDate.label', default: 'Registration Date')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${eventInstance.participants}" status="i" var="participantInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
			
				 <td><g:link action="show" id="${participantInstance.id}">${fieldValue(bean: participantInstance, field: "birthday")}</g:link></td>
			
				<td>${fieldValue(bean: participantInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: participantInstance, field: "nationality")}</td>
			
				<td>${fieldValue(bean: participantInstance, field: "ocupation")}</td>
			
				<td><g:formatDate date="${participantInstance.registrationDate}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${participantInstanceCount ?: 0}" />
	</div>
</g:if>
<g:else>
	Nenhuma participante está cadastrado no evento.
</g:else>

<ol class="property-list event">
	<li class="fieldcontain">
		<g:form action="save" controller="participant" method="POST">
			<div class="fieldcontain">
				<label for="name">Nome:</label>
				<input type="text" name="name" id="name"/>
			</div>
			
			<div class="fieldcontain">
				<label for="nationality">Nacionalidade:</label>
				<input type="text" name="nationality" id="nationality"/>
			</div>

			<div class="fieldcontain">
				<label for="ocupation">Ocupação:</label>
				<input type="text" name="ocupation"/>
			</div>

			<div class="fieldcontain">
				<label for="birthday">Data de nascimento:</label>
				<g:datePicker name="birthday" value="${new Date()}" precision="day"/>
			</div>

			<input type="hidden" value="${eventInstance.id}" name="eventId">
			<button type="submit">Salvar</button>
		</g:form>
	</li>
</ol>
