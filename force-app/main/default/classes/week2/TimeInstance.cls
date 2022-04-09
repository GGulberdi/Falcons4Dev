public with sharing class TimeInstance {
    public void TimeInstance() {

        //get currrnt time
        Datetime currentTime =  Datetime.now();
        // system.debug(currentTime);
        Integer getHour= currentTime.hourGmt();
        Integer getMinutes= currentTime.minuteGmt();
        Integer getSeconds= currentTime.secondGmt();
        String fullTime = getHour+' : '+getMinutes+' : '+getSeconds;
        system.debug('Current time => '+fullTime);

        // find out what would be the time after 47894 second from now
        Time mytime = Time.newInstance(getHour, getMinutes, getSeconds,0);
        time expected = mytime.addSeconds(47894);
        system.debug('After 47894 minute expected time => '+expected);

        // Find time 15 hrs back from now
        time before15hours = mytime.addHours(-15);
        system.debug('Time 15 hours back from now => '+before15hours);

        //Find time 15 hrs 20 mins back from now
        time before20minutes = mytime.addMinutes(-15*60-20);
        system.debug('Time 15 hours 20 minute back from now => '+before20minutes);

        //Find the second component from the time that will be after 47894 seconds from now.
       Integer expectedSecontTime = expected.second();
        system.debug('The second component from time that will be after 47894 seconds from now => '+expectedSecontTime);

        //Find the hour component from the time that will be after 4797894 seconds from now
        time expected1 = mytime.addSeconds(4797894);
        Integer hourComponent = expected1.hour();
        system.debug('The hour component from time that will be after 4797894 seconds from now => '+hourComponent);

            
        


    }
}
