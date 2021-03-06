package com.elasticevent.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventController {

    ///def mongo TODO: Testar a API low level do GMongo

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def listOfEvent = Event.createCriteria().list(sort: params?.sort ?: "name", order: params?.order ?: "desc", max: params.max, offset: params.offset) {
            if(params.name) {
                like("name", "%" + params.name + "%")
            }
        }

        respond listOfEvent, model:[eventInstanceCount: listOfEvent.totalCount]
    }

    def show(Event eventInstance) {
        respond eventInstance
    }

    def create() {
        respond new Event(params)
    }

    @Transactional
    def save(Event eventInstance) {
        if (eventInstance == null) {
            notFound()
            return
        }

        if (eventInstance.hasErrors()) {
            respond eventInstance.errors, view:'create'
            return
        }

        if(params.additionalFieldName && params.additionalFieldValue) {
            eventInstance."${params.additionalFieldName}" = params.additionalFieldValue
        }

        eventInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'event.label', default: 'Event'), eventInstance.id])
                redirect eventInstance
            }
            '*' { respond eventInstance, [status: CREATED] }
        }
    }

    def edit(Event eventInstance) {
        respond eventInstance
    }

    @Transactional
    def update(Event eventInstance) {
        if (eventInstance == null) {
            notFound()
            return
        }

        if (eventInstance.hasErrors()) {
            respond eventInstance.errors, view:'edit'
            return
        }

        eventInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Event.label', default: 'Event'), eventInstance.id])
                redirect eventInstance
            }
            '*'{ respond eventInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Event eventInstance) {

        if (eventInstance == null) {
            notFound()
            return
        }

        eventInstance.delete flush:true

        request.withFormat { 
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Event.label', default: 'Event'), eventInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'event.label', default: 'Event'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def saveOrganizer(Organizer organizer) {
        Event event = Event.get(params.eventId)

        event.organizers.add(organizer)
        event.save(failOnError: true)
        
        flash.message = "Organizador adicionado com sucesso"
        redirect(controller: "event", action: "show", id: params.eventId)
    }
}
