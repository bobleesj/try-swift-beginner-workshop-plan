/*:
 ## Session 3: Intro to Swift Functions
 ### 3.4 Trailing Closures
 - Be able to spot when to use trailing closures
 */


//: Design Function
func trailingClosure(number: Int, closure: () -> Void) {
  print("You've entered \(number)")
  closure()
}

//: Design Closure block
func helloFunc() -> Void {
  print("Hello, Function!")
}

let helloClosure = {
  print("Hello, Closure!")
}

// Pass closure indirecty
trailingClosure(number: 100, closure: helloFunc)
trailingClosure(number: 100, closure: helloClosure)

// Pass closure directly
trailingClosure(number: 100, closure: { print("Hello!!!") })
trailingClosure(number: 100) { print("Hello!!!") }
