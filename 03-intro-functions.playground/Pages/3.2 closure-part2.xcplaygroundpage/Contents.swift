/*:
 ## Session 3: Intro to Swift Functions
 ### 3.2 Intro to Closures Part 2
 - Be able to return a closure block
 - Be able to pass a closure block as a parameter
 */

//: Review: Add two numbers
var addTwoNumbersClosure = { (number1: Int, number2: Int) in
  return number1 + number2
}

//: Review: Say hello
var sayHello: () -> String = { () in
  "hello"
}

//: ### Return Closure
//: Return Closure Indirectly
func returnClosure() -> ((Int, Int) -> Int) {
  return addTwoNumbersClosure
}

let returnedClosure = returnClosure()
returnedClosure(10, 10)
returnClosure()(10, 10)

//: Return Closure Directly Method One
func returnClosureDirectly() -> ((Int, Int) -> Int) {
  return { (number1, number2) in number1 + number2 }
}


let closure = returnClosureDirectly()
closure(10, 10)

//: Return Closure Directly Method Two
func returnClosureDirectlyTwo() -> ((Int, Int) -> Int) {
  return { $0 + $1 }
}

let closureTwo = returnClosureDirectlyTwo()
closureTwo(10, 10)


//: ### Pass Closure
func insertClosureBlock(closureBlock: () -> String) -> String {
  return closureBlock()
}

//: Pass Closure Indirectly
let returnValue = insertClosureBlock(closureBlock: sayHello)
insertClosureBlock(closureBlock: sayHello)

//: Pass Closure Directly
insertClosureBlock(closureBlock: { () in return "hello" })
insertClosureBlock(closureBlock: { return "hello" })
insertClosureBlock(closureBlock: { "hello" })


//: Later Today with functional programming
let example = Array(1...100).filter { $0 % 2 == 0 }

/*:
 ### Problem: Manipulate number
 **Description:** Enter a number and returns its sqaured value. The function two arguments: `Int` and `(Int) -> (Int)`
*/

// Closure
func squareFunction(number: Int) -> Int {
  return number * number
}

// Function
func squareNumber(number: Int, closure: (Int) -> Int) -> Int {
  return closure(number)
}

//: Pass closure indirectly
squareNumber(number: 5, closure: squareFunction)

//: Pass closure directly
squareNumber(number: 5, closure: { $0 * $0 })




