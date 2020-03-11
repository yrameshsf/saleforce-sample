public with sharing class mycontroller {

private Account account;

public  mycontroller (){

   Id id = ApexPages.currentPage().getParameters().get('id');
        account = (id == null) ? new Account() : 
            [SELECT Name, Phone, Industry FROM Account WHERE Id = '0017F00002P9VXo'];

}

 public Account getAccount() {
        return account;
    }
    
    public pagereference save(){
    update account;
system.debug(account);
//new line
return null;
    }
}
