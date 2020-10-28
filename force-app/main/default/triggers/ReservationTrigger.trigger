/**
 * Created by michael.norton on 10/27/20.
 */

trigger ReservationTrigger on Reservation__c (before insert, before update, after insert, after update) {

	System.debug( 'ReservationTrigger - START');

	if ( Trigger.isBefore ) {
		System.debug( 'Before');
	} else {
		System.debug( 'After');
	}

	if ( Trigger.isInsert ) {
		System.debug( 'Insert');
	} else {
		System.debug( 'Update');
	}

	List<Reservation_Trigger_Handler__mdt> reservationTriggerHandlers = [
			SELECT
					DeveloperName,
					Id,
					Is_Active__c,
					Label,
					Language,
					MasterLabel,
					NamespacePrefix,
					QualifiedApiName,
					Trigger_Handler_Class__c
			FROM Reservation_Trigger_Handler__mdt];
	System.debug( 'Number of Trigger Handlers is [' + reservationTriggerHandlers.size() +']' );

	System.debug( 'ReservationTrigger - END');
}