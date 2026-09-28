//6a
public with sharing class Q6 implements Database.Batchable<SObject>, Database.RaisesPlatformEvents {

    public Database.QueryLocator start(Database.BatchableContext context) {
        
        return Database.getQueryLocator([SELECT Id, AnnualRevenue, Status, Customer_Tier__c FROM ACCOUNT]);
    }

    public void execute(Database.BatchableContext context, List<SObject> scope) {
        for(Account acc: scope){
            if(acc.Status == 'Active'){
                if(acc.AnnualRevenue>=10000000 && acc.AnnualRevenue != 0){
                    acc.Customer_Tier__c == 'Enterprise';
                }
                else if(acc.AnnualRevenue>=1000000 && acc.AnnualRevenue != 0){
                    acc.Customer_Tier__c == 'Medium';
                }
                else{
                    acc.Customer_Tier__c == 'Small';
                }
            }
        }
        update scope;
    }

    public void finish(Database.BatchableContext context) {

    }
}

/**
 * start methods query all the data on which all the operation will proceed. execute method does all the operation according to business logic batch by batch and finish method defines the completion of the operation and may send notification,email etc.
 */






 //6b
 public with sharing class Q6 implements Database.Batchable<SObject>, Database.RaisesPlatformEvents {

    public Database.QueryLocator start(Database.BatchableContext context) {
        
        return Database.getQueryLocator([SELECT Id, AnnualRevenue, Status, Customer_Tier__c FROM ACCOUNT]);
    }

    public void execute(Database.BatchableContext context, List<SObject> scope) {
        for(Account acc: scope){
            if(acc.Status == 'Active'){
                if(acc.AnnualRevenue>=10000000 && acc.AnnualRevenue != 0){
                    acc.Customer_Tier__c == 'Enterprise';
                }
                else if(acc.AnnualRevenue>=1000000 && acc.AnnualRevenue != 0){
                    acc.Customer_Tier__c == 'Medium';
                }
                else{
                    acc.Customer_Tier__c == 'Small';
                }
            }
        }
        update scope;
    }

    public void finish(Database.BatchableContext context) {

    }
}


//6c
/**
 * the batch scope size always kept under the governor limit of async operation so that no exception and failure happens due to governor limit. the execute methods calls multiple time to cover the whole data batch bt batch.
 * I would consider the total data amount and the time limit and the async operation governor limit before selecting a suitable scope.
 */



 
