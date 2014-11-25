<%@ page import="com.elasticevent.domain.Participant" %>



<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="participant.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day" value="${participantInstance?.birthday}" />

</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="participant.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${participantInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'nationality', 'error')} ">
	<label for="nationality">
		<g:message code="participant.nationality.label" default="Nationality" />
		
	</label>
	<g:textField name="nationality" value="${participantInstance?.nationality}" />

</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'ocupation', 'error')} ">
	<label for="ocupation">
		<g:message code="participant.ocupation.label" default="Ocupation" />
		
	</label>
	<g:textField name="ocupation" value="${participantInstance?.ocupation}" />

</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'registrationDate', 'error')} ">
	<label for="registrationDate">
		<g:message code="participant.registrationDate.label" default="Registration Date" />
		
	</label>
	<g:datePicker name="registrationDate" precision="day" value="${participantInstance?.registrationDate}" />

</div>

