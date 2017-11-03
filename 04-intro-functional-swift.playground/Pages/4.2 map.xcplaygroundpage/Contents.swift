/*:
 ## Session 4: Intro to Functional Swift
 ### 4.2 Map
 - Be able to `[1, 2, 3, 4, 5]` to `[1, 4, 9, 16, 25]` in one line
 */


//: Imperative/Non-functional
var squaredNumbers: [Double] = []

var numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
for number in numbers {
  squaredNumbers.append(number * number)
}

squaredNumbers


//: The Built-in `Map` Function
numbers.map { $0 * $0 } // [1, 4, 9, 16, 25]

//: Non-Generic Map (Numbers)
func myMap(numbers: [Double], operation: (Double) -> Double) -> [Double] {
  var result: [Double] = []
  for number in numbers {
    let transformedValue = operation(number)
    result.append(transformedValue)
  }
  
  return result
}


let result = myMap(numbers: [1, 2, 3, 4, 5], operation: { (number) -> Double in
  number * number
})

myMap(numbers: [1, 2, 3, 4, 5], operation: { $0 * $0 })

func slightlyGenricMap<T>(_ items: [T], _ operation: (T) -> T) -> [T] {
  var result: [T] = []
  for item in items {
    result.append(operation(item))
  }
  return result
}


//: Ex 1) Lowercacse Each Element
let upperLetters = ["MUMBAI", "BANGALORE"]

func lowercase(enterString: String) -> String {
  return enterString.lowercased()
}

//: Pass Closure **Indirectly**
print(slightlyGenricMap(upperLetters, lowercase))

//: Pass Closure **Directly** (Longer Form)
slightlyGenricMap(upperLetters, { (name) -> String in
  name.lowercased()
})

//: Pass Closure **Directly** (Shorter Form)
slightlyGenricMap(upperLetters, { $0.lowercased() })


//: ### Extremely Generic `Map`
func genericMap<T, U>(_ items: [T], _ operation: (T) -> U) -> [U] {
  var result = [U]()
  for item in items {
    result.append(operation(item))
  }
  return result
}


/*:
 ### Problem: Manipulate `Int` to `String`
 **Description:** Create a function that manipuates `Int` to `String
 */

//: Pass Closure **Indirectly**
func convertNumberToString(number: Int) -> String {
  return "You are number \(String(number))"
}

let myNumbers = [1, 2, 3, 4, 5]
print(genericMap(myNumbers, convertNumberToString))


//: Pass Closure **Directly** (Longer Form)
genericMap(myNumbers) { (number) -> String in
  "You are number \(String(number))"
}

//: Pass Closure **Directly** (Shorter Form)
genericMap(myNumbers) { "You are number \(String($0))" }

//: The Purest Form
extension Array {
  func myMap<U>(_ operation: (Element) -> U) -> [U] {
    var result = [U]()
    for item in self {
      result.append(operation(item))
    }
    return result
  }
}

let finalResult = Array(1...10).myMap { $0 * 10 }
print(finalResult)

