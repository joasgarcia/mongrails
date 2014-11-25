package com.elasticevent.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ParticipantController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Participant.list(params), model:[participantInstanceCount: Participant.count()]
    }

    def show(Participant participantInstance) {
        respond participantInstance
    }

    def create() {
        respond new Participant(params)
    }

    @Transactional
    def save(Participant participantInstance) {
        println "1 >>>>>>>>>>>>><<<<<<<<<<<,"
        if (participantInstance == null) {
            notFound()
            return
        }

        participantInstance.registrationDate = new Date()
        participantInstance.validate()

        if (participantInstance.hasErrors()) {
            println participantInstance.errors
            flash.message = "Dados do participante estão inválidos."
            redirect(controller: "event", action: "show", id: params.eventId)
            return
        }

        println "aqui2"

        Event event = Event.get(params.eventId)
        event.participants.add(participantInstance)
        event.save(failOnError: true)

        flash.message = "Participant criado com sucesso."
        redirect(controller: "event", action: "show", id: params.eventId)
    }

    def edit(Participant participantInstance) {
        respond participantInstance
    }

    @Transactional
    def update(Participant participantInstance) {
        if (participantInstance == null) {
            notFound()
            return
        }

        if (participantInstance.hasErrors()) {
            respond participantInstance.errors, view:'edit'
            return
        }

        participantInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Participant.label', default: 'Participant'), participantInstance.id])
                redirect participantInstance
            }
            '*'{ respond participantInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Participant participantInstance) {

        if (participantInstance == null) {
            notFound()
            return
        }

        participantInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Participant.label', default: 'Participant'), participantInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'participant.label', default: 'Participant'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
