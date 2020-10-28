/**
 * Created by michael.norton on 10/27/20.
 */

trigger ReservationTrigger on Reservation__c (before insert, before update, after insert, after update) {

	System.debug( 'ReservationTrigger - START' );

	List<Reservation_Trigger_Handler__mdt> reservationTriggerHandlers = [
			SELECT Trigger_Handler_Class__c
			FROM Reservation_Trigger_Handler__mdt
			WHERE Is_Active__c = TRUE
	];
	System.debug( 'Number of Trigger Handlers is [' + reservationTriggerHandlers.size() + ']' );

	for ( Reservation_Trigger_Handler__mdt reservationTriggerHandler : reservationTriggerHandlers ) {

		ReservationTriggerHandler triggerHandler = ( ReservationTriggerHandler ) ReservationHandlerInjector.instantiate( reservationTriggerHandler.Trigger_Handler_Class__c );
		if ( Trigger.isBefore && Trigger.isInsert ) {
			System.debug( 'Before Insert' );
			triggerHandler.handleBeforeInsert( Trigger.new);
		} else if ( Trigger.isBefore && Trigger.isUpdate ) {
			System.debug( 'Before Update' );
			triggerHandler.handleBeforeUpdate( Trigger.newMap, Trigger.oldMap);
		} else if ( Trigger.isAfter && Trigger.isInsert ) {
			System.debug( 'After Insert' );
			triggerHandler.handleAfterInsert( Trigger.new);
		} else if ( Trigger.isAfter && Trigger.isUpdate ) {
			System.debug( 'After Update' );
			triggerHandler.handleAfterUpdate( Trigger.newMap, Trigger.oldMap);
		} else {
			System.debug( 'Not a valid scenario');
		}

	}
	System.debug( 'ReservationTrigger - END' );

}
