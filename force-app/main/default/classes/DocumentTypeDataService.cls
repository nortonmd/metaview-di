/**
 * Created by michael.norton on 10/14/20.
 */

public class DocumentTypeDataService {

	public static Document_Type__c getDocumentTypeByName( String searchName ) {
		Document_Type__c documentType = new Document_Type__c();
		List<Document_Type__c> documentTypes = new List<Document_Type__c>();
		documentTypes = [
				SELECT Name, Description__c
				FROM Document_Type__c
				WHERE Name = :searchName
		];
		if ( !documentTypes.isEmpty() ) {
			documentType = documentTypes[0];
		}
		return documentType;
	}

	public static List<Document_Type__c> getDocumentTypes() {
		return [
				SELECT Name, Description__c
				FROM Document_Type__c
		];
	}
}