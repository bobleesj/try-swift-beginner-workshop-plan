/*:
 ## Session 1: Swift Fundamentals
 ### 1.2 Intro to Functions
 - Be able to create functions with and without arguments
 - Be able to identify the motivation behind local parameters
 */

//: Function without return
func printHello() {
  print("Hello")
}

//: Function with return and arguments
func addTwoNumbers(number1: Int, number2: Int) -> Int {
  return number1 + number2
}

addTwoNumbers(number1: 10, number2: 10)

//: Function with local parameter
func location(from origin: String, to destination: String) {
  print("You are moving from \(origin) to \(destination)")
}

location(from: "Seoul", to: "Bangalore")

//: Function with unnamed parameter
func moveFrom(_ origin: String, to destination: String) {
  print("You are moving from \(origin) to \(destination)")
}

moveFrom("Seoul", to: "Bangalore")

/*:
 ### Problem: Multiply two numbers
 **Description:** Create a function that multiples two numbers and contains one **unnamed parameter**.
 */

func multiply(_ number1: Int, by number2: Int) -> Int {
  return number1 * number2
}

multiply(10, by: 10) // 100






