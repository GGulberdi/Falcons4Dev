public with sharing class Hw_2 {
    public void Hw_2() {

        //1
        Integer i =0;
        Integer j=i++ + ++i;
        System.debug('1=> '+j);

        //2
        integer a = 0;
        integer b = ++a + a++;
        system.debug('2=> '+ b );
        
        //3
        // integer c = 100;
        // integer d = 10;
        // system.debug( c % d );

        //4
        Boolean e = false;
        Boolean f = true;
        if(!e && f)
        system.debug('4=> '+'1');
        else
        system.debug('4=> '+'2');

        //5
        boolean b1 = true, b2 = false, b3 = true;
        system.debug(b1&&b2&&!b3 );
        
        //6
        integer g= 10, h = 12, k = 1;
        k += g++ - --h;
        system.debug('6=> '+k);

        //7
        integer o = 10;
        O++;o++;++o;
        integer p = o++;
        system.debug('7=> '+p);

        //8
        integer s = 19;
        integer t = -5;
        system.debug( '8=> '+s/t );

        //9
        integer w = -21;
        integer v = 4;
        system.debug('9=> '+ w/v );

        //10
        String temp = 'Nice';
        String temp1 = ' Work';
        system.debug( '10=> '+temp+temp1 );

        //11. What is the difference between “=” and “==” operator



    }
}
