/*:
 ## Session 1: Swift Fundamentals
 ### 1.1 Types
 - Be able to identify mutable and immutable value types with `let` and `var`
 - Be able to understand what type means by referring to `Class` and `Struct`.
 */

//: Difference between `let` and `var`
let originalPrice = 50
var discountedPrice = 10

// originalPrice = 10 (constant)
discountedPrice = 20

//: > **Important:** Type must be defined `explicitly` or `implicitly`

//: Various Swift Types

// Number
let number = 10 // Int
let definedNumber: Int = 10 // Inferred
let longerNumber = 10.00 // Double

// String
let name = "Bob the Developer"

// Boolean
let areYouBob = true
let areYouRob = false

// Class and Structs as Type
struct StructAsType {}
class ClassAsType {}

let structAsType = StructAsType()
let classAsType = ClassAsType()



