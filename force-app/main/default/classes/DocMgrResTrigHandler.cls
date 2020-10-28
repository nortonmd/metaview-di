/**
 * Created by michael.norton on 10/27/20.
 */

public with sharing class DocMgrResTrigHandler implements ReservationTriggerHandler {

	public void handleBeforeInsert( List<Reservation__c> reservations ) {
		System.debug( 'DocMgrResTrigHandler.handleBeforeInsert()' );
	}

	public void handleAfterInsert( List<Reservation__c> reservations ) {
		System.debug( 'DocMgrResTrigHandler.handleAfterInsert()' );
	}

	public void handleBeforeUpdate( Map<Id, Reservation__c> reservations, Map<Id, Reservation__c> reservationOld ) {
		System.debug( 'DocMgrResTrigHandler.handleBeforeUpdate()' );
	}

	public void handleAfterUpdate( Map<Id, Reservation__c> reservations, Map<Id, Reservation__c> reservationOld ) {
		System.debug( 'DocMgrResTrigHandler.handleAfterUpdate()' );
	}
}