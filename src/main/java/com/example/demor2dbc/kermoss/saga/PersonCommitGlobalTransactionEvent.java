package com.example.demor2dbc.kermoss.saga;

import com.example.demor2dbc.entities.write.WmPerson;
import com.example.demor2dbc.kermoss.events.BaseGlobalTransactionEvent;

public class PersonCommitGlobalTransactionEvent extends BaseGlobalTransactionEvent {

    private final  WmPerson person;

	public PersonCommitGlobalTransactionEvent(WmPerson person) {
		super();
		this.person = person;
	}

	public WmPerson getPerson() {
		return person;
	}
	
	
     
     

}