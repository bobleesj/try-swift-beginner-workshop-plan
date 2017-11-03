/*:
 ## Session 4: Intro to Swift Functions
 ### 4.1 Intro to Functional Swift
 - Be able to understand the functional paradigm.
 - Be able to recognize the difference between imperative and declarative style.
 - Be able to use closure to create a custom `filter` function.
 */


//: ### Non-functional Programming
// Somewhere in ViewController
let numbers = [1, 2, 3]
var sum = 0
for number in numbers {
  sum += number
}

//: > **Bob's Definition:** Functional programming is nothing more than using functions to derive results
//: ### Functional Programming
func saveMeFromMadness(elements: [Int]) -> Int {
  var sum = 0
  for element in elements {
    sum += element
  }
  
  return sum
}

// Somewhere in ViewController
saveMeFromMadness(elements: [1, 2, 3])
// Somewhere in NextViewController
saveMeFromMadness(elements: [4, 5, 6])


/*:
 ### Declarative: Functional
 The user does not care about the process
 
 Ex) Jump off from an airplane vs climb
 
 ### Imperative:  Non-Functional
 It tells you how you got the answer from A → B.
 
 Ex) The `for-in` loop
 */


/*:
 ### Benefits of Functional Programming
 - No explicit state management
 - Modularity
 - Fewer lines
 - Conventional communication with `$0`
 */


// Get even numbers
var evens = [Int]()

for i in 1...10 {
  if i % 2 == 0 {
    evens.append(i)
  }
}

//: Declarative/Functional
Array(1...10).filter { (number) in number % 2 == 0 }
Array(1...10).filter { $0 % 2 == 0 }

//: ### Become an A student
let recentGrade = ["A", "A", "A", "A", "B", "D"] // It can be any data

//: Imperative/Non-functional
var happyGrade: [String] = []

for grade in recentGrade {
  if grade == "A" {
    happyGrade.append(grade)
  } else {
    print("My mama not happy")
  }
}

print(happyGrade) // ["A", "A", "A", "A"]

//: ### Functional Way
//: Create closure block that returns `true`/`false`
var isMomHappy: (String) -> Bool = { (grade) in
  return grade == "A"
}

isMomHappy = { $0 == "A" }
isMomHappy("A")
isMomHappy("B")

//: Create function that takes the closure

func simpleStringFilter(grades: [String], operation: (String) -> Bool) -> [String] {
  var happyGrade: [String] = []
  
  for grade in grades {
    if operation(grade) {
      happyGrade.append(grade)
    } else {
      print("Not the grade I hoped")
    }
  }
  
  return happyGrade
}

//: Pass the closure block indirectly
print(simpleStringFilter(grades: recentGrade, operation: isMomHappy))

//: Pass the closure block directly
print(simpleStringFilter(grades: recentGrade) { grade in return grade == "A"})


func bobFilter<Bob>(array: [Bob], operation: (Bob) -> Bool) -> [Bob] {
  var result: [Bob] = []
  
  for element in array {
    if operation(element) {
      result.append(element)
    } else {
      print("Not the grade I hoped")
    }
  }
  
  return result
}

func myFilter<T>(array: [T], operation: (T) -> Bool) -> [T] {
  var result: [T] = []
  for element in array {
    if operation(element) {
      result.append(element)
    }
  }
  return result
}


//: Ex 1) Filter Numbers
let AStudent = myFilter(array: Array(1...100), operation: { $0 > 93 && $0 <= 100 })

print(AStudent)


//: Ex 2) Vote Counting
let answer = [true, false, true, false, false, false, false]
let trueAnswer = myFilter(array: answer, operation: { $0 == true })
print(trueAnswer)

//: Trailing Closure
let falseAnswer = myFilter(array: answer) { $0 == false }


//: The Built-in Filter Functionl
let zeroToHund = Array(1...100)
zeroToHund.filter{ $0 % 2 == 0 }.filter { $0 <= 50 }


//: The Purest Form
extension Array {
  func myFilter(_ operation: (Element) -> Bool) -> [Element] {
    var result: [Element] = []
    for item in self {
      if operation(item) {
        result.append(item)
      }
    }
    return result
  }
}


/*:
 ### Problem: Create `Map`
 **Description:** Create a function that converts `[1, 2, 3, 4, 5]` to `[1, 4, 9, 16, 25]` in one line
 */

