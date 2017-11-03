/*:
 ## Session 9: Intro to Swift Memory Management
 ### 9.2 Introduction to Automatic Reference Counting
 - Be able to how allocation/deallocation is managed by the ARC
 - Be able to differentiate between `weak` and `unowned`
 */

//: Design Passport
class Passport {
  weak var human: Human?
  let citizenship: String
  
  init(citizenship: String) {
    self.citizenship = citizenship
    print("\(citizenship) passport generated")
  }
  
  deinit {
    print("I, paper, am gone")
  }
  
}

//: Design Human
class Human {
  var passport: Passport?
  let name: String
  
  init(name: String) {
    self.name = name
    print("\(name) generated")
  }
  
  deinit {
    print("I, \(name), gone")
  }
  
}


Passport(citizenship: "Republic of Korea")

var bobby: Human? = Human(name: "Bobby")
var passport: Passport? = Passport(citizenship: "Republic of Korea")

//: Deallocate
//bobby = nil
//passport = nil

var bob: Human? = Human(name: "Bob")
var myPassport: Passport? = Passport(citizenship: "Republic of Korea")

bob?.passport = myPassport
myPassport?.human = bob

// Option 1
//bob = nil
//myPassport = nil

// Option 2
// myPassport = nil
// bob = nil

//: Rules
//:  - A `weak` reference allows the referencing object to becoming `nil` (this happens automatically when the referenced object is deallocated)
//: - Based on the rule above, the referencing object/variable must be `optional`


