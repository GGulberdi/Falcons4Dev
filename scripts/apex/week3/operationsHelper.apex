operationsHelper ppt = new operationsHelper();
List<Decimal> numbers = new List<Decimal>();
numbers.add(10.65);
numbers.add(78.6);
numbers.add(99);
numbers.add(-65);
numbers.add(67.89);
numbers.add(20);
// system.debug(numbers);
system.debug(ppt.ssum(numbers));
system.debug(ppt.average(numbers));
system.debug(ppt.highest(numbers));
system.debug(ppt.lowest(numbers));
ppt.reverse(numbers);