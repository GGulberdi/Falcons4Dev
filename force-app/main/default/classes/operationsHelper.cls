public with sharing class operationsHelper {
    public Decimal ssum(List<Decimal> numbers) {
        Decimal sum;
        if(numbers !=null && numbers.size()>0){
            sum=0;
            for(Integer i=0; i < numbers.size(); i++){
                sum = sum+numbers[i];
            }
        }else{
              system.debug('Please provide  values to do the operation');
        }
        return sum;
    }
    public Decimal average(List<Decimal> numbers) {
        Decimal sum;
        if(numbers !=null && numbers.size()>0){
            sum = ssum(numbers)/numbers.size();        
        }else{
            system.debug('Please provide  values to do the operation');
        }
        return sum;
    }
    public Decimal highest(List<Decimal> numbers) {
        Decimal sum;
        if(numbers !=null && numbers.size()>0){
            for(Integer i=0; i < numbers.size()-1; i++){
                if(sum >numbers[i]){
                     sum = sum;
                    }else {
                        sum=numbers[i];
                    }
            }
        }else{
              system.debug('Please provide  values to do the operation');
        }
        return sum;
    }
    public Decimal lowest(List<Decimal> numbers) {
        Decimal sum;
        if(numbers !=null && numbers.size()>0){
            for(Integer i=0; i < numbers.size()-1; i++){
                if(sum <numbers[i]){
                     sum = sum;
                    }else {
                        sum=numbers[i];
                    }
            }
        }else{
              system.debug('Please provide  values to do the operation');
        }
        return sum;
    }
    public void reverse(List<Decimal> numbers) {
        List<Decimal> reversed= new List<Decimal>();
        if(numbers !=null && numbers.size()>0){
            for(Integer i=numbers.size()-1; i>0; i--){
                reversed.add(numbers[i]);}
                system.debug(reversed);    
            }else{
              system.debug('Please provide  values to do the operation');
        }
    }
}