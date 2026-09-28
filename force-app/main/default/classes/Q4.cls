//4a
/*Viewing certain assessment records of the Customer_Assessment__c object is th record level access.
Accessing custom object Customer_Assessment__c or fields like Risk_Score__c and Internal_Comment__c are the object/field-level access */



//4b
//public with sharing class RetrieveData - this will be used for Apex class declaration
// The query should use WITH USER_MODE

//4c
//The query should use WITH USER_MODE to ensure CRUD and field-level security
// The DML operation should use User_Access when  updating the fields.

//4d
//Important records like internal comment exposing may create a huge organizational risk. The private data breach may be a great risk for the users. To prevent these, we need to use WITH USER_MODE while doing query, always use with sharing while class declaration to enforce record level security.