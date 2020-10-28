/**
 * Created by michael.norton on 10/27/20.
 */

public with sharing class LoadShareResTrigHandler implements ReservationTriggerHandler {

	public void handleBeforeInsert( List<Reservation__c> reservations ) {
		System.debug( 'LoadShareResTrigHandler.handleBeforeInsert()' );
	}

	public void handleAfterInsert( List<Reservation__c> reservations ) {
		System.debug( 'LoadShareResTrigHandler.handleAfterInsert()' );
	}

	public void handleBeforeUpdate( Map<Id, Reservation__c> reservations, Map<Id, Reservation__c> reservationOld ) {
		System.debug( 'LoadShareResTrigHandler.handleBeforeUpdate()' );
	}

	public void handleAfterUpdate( Map<Id, Reservation__c> reservations, Map<Id, Reservation__c> reservationOld ) {
		System.debug( 'LoadShareResTrigHandler.handleAfterUpdate()' );
	}
}