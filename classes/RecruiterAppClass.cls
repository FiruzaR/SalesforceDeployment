public class RecruiterAppClass {
    public static void reruiterAppMethod(List<Job_application__c> newList ){
        
        List <Task> newTask = new List<Task>();
        
        for(Job_application__c  jobApp: newList) {
            if(jobApp.Status__c == 'Rejected') {
                Task taskApp = new Task();
                taskApp.subject = 'Send Rejection Letter';
                taskApp.WhatId = jobApp.Id;
                taskApp.Description= 'Send rejection notification to the candidate';
                        taskApp.Status = 'Not Started';
               newTask.add(taskApp);
                
            }
            
        }
        
        if(!newTask.isEmpty()) {
            insert newTask;
        }
    }

}