<%@ page import="com.elasticevent.domain.Organizer" %>



<div class="fieldcontain ${hasErrors(bean: organizerInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="organizer.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day" value="${organizerInstance?.birthday}" />

</div>

<div class="fieldcontain ${hasErrors(bean: organizerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="organizer.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${organizerInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: organizerInstance, field: 'nationality', 'error')} ">
	<label for="nationality">
		<g:message code="organizer.nationality.label" default="Nationality" />
		
	</label>
	<g:textField name="nationality" value="${organizerInstance?.nationality}" />

</div>

<div class="fieldcontain ${hasErrors(bean: organizerInstance, field: 'ocupation', 'error')} ">
	<label for="ocupation">
		<g:message code="organizer.ocupation.label" default="Ocupation" />
		
	</label>
	<g:textField name="ocupation" value="${organizerInstance?.ocupation}" />

</div>

