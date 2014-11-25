<%@ page import="com.elasticevent.domain.Speaker" %>



<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="speaker.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day" value="${speakerInstance?.birthday}" />

</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="speaker.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${speakerInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'nationality', 'error')} ">
	<label for="nationality">
		<g:message code="speaker.nationality.label" default="Nationality" />
		
	</label>
	<g:textField name="nationality" value="${speakerInstance?.nationality}" />

</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'ocupation', 'error')} ">
	<label for="ocupation">
		<g:message code="speaker.ocupation.label" default="Ocupation" />
		
	</label>
	<g:textField name="ocupation" value="${speakerInstance?.ocupation}" />

</div>

