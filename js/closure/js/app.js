// function greeting(greet) {

//   function say(msg) {
//     console.log(`${greet} ${msg}!`);
//   }

//   return say;
// }

// var hello = greeting('Xin chao');
// console.log(hello);
// console.log(hello('Binh dep trai'));

// add 2 numbers
function add(x, y) {
  return x + y;
}
// substract 2 numbers
function sub(x, y) {
  return x - y;
}

// The outer function 'logger'
function logger(func) {

  // the inner function with closure
  function logFunc(a, b) {
    // have 2 parameters 'a' and 'b' to receive 2 arguments to pass to function 'func'
    // a, b will be pass to x, y in 'add' or 'sub'
    var result = func(a, b);
    console.log(`Running function '${func.name}' with result ${result}`);
    // 'func.name' returns name of the function which is passed to 'func' parameter
  }

  return logFunc;
  // without '()' : don't execute the 'logFunc' function
  // just return the logFunc function itself

}

var logAdd = logger(add);
var logSub = logger(sub);

console.log(logAdd(3, 4));
