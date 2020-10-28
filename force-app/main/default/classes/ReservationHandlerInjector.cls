/**
 * Created by michael.norton on 10/27/20.
 */

public with sharing class ReservationHandlerInjector {

	public static Object instantiate( String className) {
		Type t = Type.forName( className);
		return t.newInstance();
	}

}