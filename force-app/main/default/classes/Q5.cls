//5a
/**
 * the implementation does not declare any error handling method to identify the error perfectly like e.getMessage(),e.getType(), e.getLinenumber() etc.
 */



 //5b
 try {
Database.insert(leadsToInsert,fasle);
} catch (Exception e) {
System.debug('Error:', e.getMessage());
System.debug('Type:',e.getType());
System.debug('Line Number:', e.getLinenumber());
}



//5d
e.getMessage()
e.getType()
e.getLinenumber()