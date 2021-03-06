@isTest 
public class GetContactDataTest {
    @testSetup static void setup(){
        List <Payment__c> pmnt = new List <Payment__c>();
        Contact cont =  new Contact();
        cont.LastName= 'Testcont';
        Insert cont;
        Project__c proj = new Project__c();
        proj.Name ='TestProj';
        insert proj;
        
        Payment__c pmt = new Payment__c();
        pmt.Amount__c= 24454.00;
        pmt.Contact__c = cont.Id;
        pmt.Project__c = proj.Id;
        pmt.Payment_Date__c= System.today();
        
        Payment__c pmtOne = new Payment__c();
        pmtOne.Amount__c= 24454.00;
        pmtOne.Contact__c = cont.Id;
        pmtOne.Project__c = proj.Id;
        pmtOne.Payment_Date__c= System.today();
        
        Payment__c pmtTwo = new Payment__c();
        pmtTwo.Amount__c= 24454.00;
        pmtTwo.Contact__c = cont.Id;
        pmtTwo.Project__c = proj.Id;
        pmtTwo.Payment_Date__c= System.today();
        pmnt.add(pmt);
        pmnt.add(pmtOne);
        pmnt.add(pmtTwo);
        insert pmnt;  
    } 
    static testMethod void myUnitTest(){  
        GetContactData.getContactList();     
    }

}