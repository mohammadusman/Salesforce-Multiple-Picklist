/*
    @Auther: Mohammad Usman
    @Version: 1.0
*/
public with sharing class MultiplePicklist {

    public list<selectOption> leftOptions{get;set;}
    public list<selectOption> rightOptions{get;set;}
    public String selectedValues {get;set;}
    public MultiplePicklist (){
        rightOptions = new list<selectOption>();        
    }    
    public list<selectOption> getAllLeftOptions(){
        leftOptions = new list<selectOption>();
        list<User> allUsers = [SELECT ID,Name FROM User limit 10000];
        for(User allUser:allUsers){
            leftOptions.add(new selectOption(allUser.Id,allUser.Name));
        }
        return leftOptions;
    }
    public PageReference clickMe() {        
        return null;
    }
}
