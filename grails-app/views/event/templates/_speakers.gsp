<h1>Palestrantes</h1>
<div id="list-speaker" class="content scaffold-list" role="main" style="margin: 0.8em 1em 0.3em;">
	<g:if test="${eventInstance.speakers.size() > 0}">
	<table>
	<thead>
			<tr>
			
				<g:sortableColumn property="birthday" title="${message(code: 'speaker.birthday.label', default: 'Birthday')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'speaker.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="nationality" title="${message(code: 'speaker.nationality.label', default: 'Nationality')}" />
			
				<g:sortableColumn property="ocupation" title="${message(code: 'speaker.ocupation.label', default: 'Ocupation')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${eventInstance.speakers}" status="i" var="speakerInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
			
				<td><g:link action="show" id="${speakerInstance.id}">${fieldValue(bean: speakerInstance, field: "birthday")}</g:link></td>
			
				<td>${fieldValue(bean: speakerInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: speakerInstance, field: "nationality")}</td>
			
				<td>${fieldValue(bean: speakerInstance, field: "ocupation")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${speakerInstanceCount ?: 0}" />
	</div>
	</g:if>
	<g:else>
		Nenhum palestrante cadastrado.
	</g:else>
</div>
<ol class="property-list event">
	<li class="fieldcontain">
		<g:form action="save" controller="speaker" method="POST">
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