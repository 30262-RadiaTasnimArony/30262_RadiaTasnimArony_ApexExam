//2a
/**
 * 1.The first query from Account object is placed inside a loop .
 * 2.The second query from Opportunity object is also  placed inside for loop.
 * 3. DML operation using update is also inside loop
 * 4.Risk of Trigger recursion
 */



 //2b
 /**
  * 1. doing query inside loop may lead to reach governor limit which is 100 for synchronized operation.
  2. Doing DML operation inside loop also may lead to governor limit for medium to large dataset as it 150 for both sync and async operation.
  3. The trigger should have used a trigger handler class which is a best practice.
  4. Performing DML update operation create trigger recursion which is a huge risk for the whole operation.The operation will not work at all.
  */

  //2c


  //2d
  /**I will use an apex handler class which will receiv the data from Trigger and implement the whole logic inside its class area. With help of context variable of triggers, main trigger will past all the necessary data and the handler will take that and generate output based on the main business logic */