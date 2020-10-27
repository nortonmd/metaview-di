/**
 * Created by michael.norton on 10/14/20.
 */

@IsTest
private class DocumentTypeDataServiceTest {
	@TestSetup
	private static void setup() {
		System.debug( 'Test Setup' );
		List<Document_Type__c> documentTypes = new List<Document_Type__c>();
		documentTypes.add( new Document_Type__c( Name = 'Acknowledgments' ) );
		documentTypes.add( new Document_Type__c( Name = 'Jurats' ) );
		insert documentTypes;
	}

	@IsTest
	static void testGetDocumentTypeByName_DocumentExists_DocumentIsReturned() {
		// Arrange
		Document_Type__c documentType = new Document_Type__c();

		// Act
		Test.startTest();
		documentType = DocumentTypeDataService.getDocumentTypeByName( 'Jurats' );
		Test.stopTest();

		// Assert
		System.assertEquals( 'Jurats', documentType.Name, 'Failed to get Document Type by Name' );
	}

	@IsTest
	static void testGetDocumentTypeByName_DocumentDoesNotExists_DocumentIsNotReturned() {
		// Arrange
		Document_Type__c documentType = new Document_Type__c();

		// Act
		Test.startTest();
		documentType = DocumentTypeDataService.getDocumentTypeByName( 'None existent' );
		Test.stopTest();

		// Assert
		System.assertEquals( new Document_Type__c(), documentType, 'Failed to get empty Document Type by Name' );
	}

	@IsTest
	static void testGetDocumentTypes_RecordsExist_RecordsAreReturned() {
		// Arrange
		List<Document_Type__c> documentTypesAll = [SELECT Name, Description__c FROM Document_Type__c];
		List<Document_Type__c> documentTypes = new List<Document_Type__c>();

		// Act
		Test.startTest();
		documentTypes = DocumentTypeDataService.getDocumentTypes();
		Test.stopTest();

		// Assert
		System.assertEquals( documentTypesAll.size(), documentTypes.size(), 'Failed to get all Document Types' );
	}


}