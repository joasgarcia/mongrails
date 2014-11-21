package com.elasticevent.domain

import org.bson.types.ObjectId

class Event {
	
	ObjectId id
	String name
	Date date
	BigDecimal ticketValue
	Integer ticketsAvailables
	Integer ticketsSold

	List<Speaker> speakers = []
	List<Organizer> organizers = []
	List<Participant> participants = []

	static embedded = ["speakers", "organizers", "participants"]

	static mapping = {
		id generator: "increment"
	}
}
