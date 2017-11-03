/*:
 ## Session 3: Intro to Swift Functions
 ### 3.1 Intro to Closures Part 1
 - Be able to recognize that Swift functions are called global closures.
 - Be able to familiarize with the Swift closure syntax.
 - Be able to create a closure block with various versions.
 */

//: Function that add two numbers
func addTwoNumbers(number1: Int, number2: Int) -> Int {
  return number1 + number2
}

addTwoNumbers(number1: 30, number2: 30)


//: Store function to let/var
var addTwoNumbersFunction = addTwoNumbers
addTwoNumbersFunction(10, 20)

//: Express function with closure
var addTwoNumbersClosure: (Int, Int) -> Int  = { (number1: Int, number2: Int) in
  return number1 + number2
}

addTwoNumbersClosure(10, 10)

//: Express function with closure part 2

var addTwoNumbersClosureTwo = {
  (number1: Int, number2: Int) in
  return number1 + number2
}

//: Express function with closure part 3
var addTwoNumbersClosureThree = {
  (number1: Int, number2: Int) in
  number1 + number2
}

addTwoNumbersClosureThree(4, 6)

//: Express function with closure part 4
var addTwoNumbersClosureFour: (Int, Int) -> Int = { $0 + $1 }
addTwoNumbersClosureThree(4, 10)
addTwoNumbersClosureThree(10, 15)


//: One example with () -> String
func callString() -> String {
  return "hello, I'm a function"
}


/*:
 ### Problem: Convert "Function" to Closure
 **Description:** Express the function below in a variety of ways
 */

//: Normal function
func sayHello() -> String {
  return "Hello"
}

//: Full closure
let sayHelloWithClosureOne: () -> String = { () in
  return "Hello"
}

//: Closure without `return`
let sayHelloWithClosureTwo: () -> String = { () in
  "Hello"
}

//: Closure without `in`
let sayHelloWithClosureThree: () -> String = { "Hello" }

//: Closure as the simpliest form
let sayHelloWithClosureFour = { "Hello" }
