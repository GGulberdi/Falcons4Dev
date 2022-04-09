public with sharing class Operators {
//     public string rankPrice(integer rank) {
// string price='';
// //if -else if

// if(rank ==1){
//     price ='Gold';
// }else if(rank==2){
//     price='Silver';
// }else if(rank ==3){
//     price ='Bronze';
// }else{
//     //nested ifs
//     if(rank <=10)
//     price = 'Top 10 certificate';
//     else{
//         price = 'Participation certificate';
//     }
    
// }
// return price;
//     }

//using switch

public string rankPricewithSwitch(integer rank) {
    string price='';
    
    switch on rank{
        when 1{price ='Gold';}
        when 2{price='Silver';}
        when 3{price='Silver';}
        when 4,6,7,8,9,10{price ='Bronze';}
        when else{price = 'Participation certificate';}
        }
    
       return price;
        }

        public string weekDaysSwitch(integer rank) {
            string day =''; 
            switch on rank{
                when 1{day ='Monday';}
                when 2{day='Tuesday';}
                when 3{day='Wednesday';}
                when 4{day ='Thursday';}
                when 5{day ='Friday';}
                when 6{day ='Saturday';}
                when 7{day ='Sunday';}
                when else{day = 'No such a weekday, Sorry......';}
                }
            
               return day;
                }


}
