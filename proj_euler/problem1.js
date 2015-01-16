// Find the sum of all the multiples of 3 or 5 below 1000
// - create array of 1 thru 1000
// - if modulo 3, 5 is equal to 0 add to variable n 
function foo()
{
  foo = Array.apply(null, Array(1000)).map(function(_, i) {return i;});
  var indexToRemove = 0;
  var numberToRemove = 1;
  bar = foo.splice(indexToRemove, numberToRemove);
  n = 0
  for (var i = 0; i < foo.length; i++) {
    if (foo[i]%3 == 0 || foo[i]%5 == 0) {
      n += foo[i]
    }
  }
  return n;
  // alert(n);
}
debug(foo());


