public with sharing class Loops {
    public void whileLoops() {
        integer count = 1;

        while (count<=25){
            system.debug('counted => '+count);
            count++;
        }
    }

    public void forLoops(integer count) {

        for (Integer i = 0; i < count; i++) {
            System.debug('passed ' +count +'. loop count is=> '+i);
           
        }
    }

    public void findweekdaysLoops(integer num) {
            string day = '';
        for (Integer i = 1; i < num; i++) {
               switch on i{
                when 1{day ='Monday';}
                when 2{day='Tuesday';}
                when 3{day='Wednesday';}
                when 4{day ='Thursday';}
                when 5{day ='Friday';}
                when 6{day ='Saturday';}
                when 7{day ='Sunday';}
                when else{day = 'No such a weekday, Sorry......';}
                }
      
             system.debug('Loop number is '+ i + 'and day of week is '+ day);
                
        }
    }
}
