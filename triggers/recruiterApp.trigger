trigger recruiterApp on Job_application__c (after update, after insert) {
    
   
    if (trigger.isafter && trigger.isInsert){
      RecruiterAppClass.reruiterAppMethod(trigger.new);
    }
     if (trigger.isafter && trigger.isUpdate){
      RecruiterAppClass.reruiterAppMethod(trigger.new);
    
}

}