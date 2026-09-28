//1a
public with sharing class retrieveInfo {
    public static void retrieveInfo(Id accountId) {
        List<Account> info = [SELECT Id, Name, 
        (SELECT Id, Name, Email, Phone FROM Contact), 
        (SELECT Id, Name, StageName, Amount,CloseDate FROM Opportunity) 
        FROM Account 
        WITH USER_MODE];
    }
}

//1c
/*the service should use a class which will use "with sharing" to ensure the record level access.Also the query inside the class should use "WITH USER_MODE" so that the field/object level access are respected when the method executes.*/

//1d
/* The query will be initiated and returned into a list just once. All the data will be extracted at once with that query. After that, when any kind of changes needs to be done, I will make that and assign that new value into a new list. After completing all the changes and adding them into the list with the hlp f a loop, then I will perform a single DML operation outside the loop. Only that new list will be used to do the DML operation. Thus it will be done efficiently
without placing SOQL queries inside loops  */