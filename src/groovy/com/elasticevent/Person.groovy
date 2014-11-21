package com.elasticevent
 
import org.bson.types.ObjectId

class Person {
	
	ObjectId id = new ObjectId()
	String name
	String nationality
	String ocupation
	Date birthday

}