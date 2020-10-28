/**
 * Created by michael.norton on 10/27/20.
 */

public interface ReservationTriggerHandler {
	void handleBeforeInsert( List<Reservation__c> reservations);
	void handleAfterInsert( List<Reservation__c> reservations);
	void handleBeforeUpdate( Map<Id,Reservation__c> reservations, Map<Id,Reservation__c> reservationOld);
	void handleAfterUpdate( Map<Id,Reservation__c> reservations, Map<Id,Reservation__c> reservationOld);
}