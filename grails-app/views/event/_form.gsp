<%@ page import="com.elasticevent.domain.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="event.date.label" default="Date" />
		
	</label>
	<g:datePicker name="date" precision="day" value="${eventInstance?.date}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="event.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${eventInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ticketValue', 'error')} ">
	<label for="ticketValue">
		<g:message code="event.ticketValue.label" default="Ticket Value" />
		
	</label>
	<g:field type="number" name="ticketValue" value="${eventInstance.ticketValue}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ticketsAvailables', 'error')} ">
	<label for="ticketsAvailables">
		<g:message code="event.ticketsAvailables.label" default="Tickets Availables" />
		
	</label>
	<g:field type="number" name="ticketsAvailables" value="${eventInstance.ticketsAvailables}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ticketsSold', 'error')} ">
	<label for="ticketsSold">
		<g:message code="event.ticketsSold.label" default="Tickets Sold" />
		
	</label>
	<g:field type="number" name="ticketsSold" value="${eventInstance.ticketsSold}" />

</div>

