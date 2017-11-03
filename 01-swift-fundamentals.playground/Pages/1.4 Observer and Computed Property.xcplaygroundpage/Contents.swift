/*:
 ## Session 1: Swift Fundamentals
 ### 1.4 Observer and Computed Properties
 - Be able to recognize computed properties with `get` and `set`
 - Be able to use property observers by learning a `willSet` and `didSet`
 */

//: Function without relationship
func getDiameter(radius: Double) -> Double {
  return radius * 2
}
func getRadius(diameter: Double) -> Double {
  return diameter / 2
}

getDiameter(radius: 10) // return 20
getRadius(diameter: 200) // return 100
getRadius(diameter: 600) // return 300

//: Properties with relationship with `Computed Property`

//: Gettable & Settable Property
var radius: Double = 10

var diameter: Double {
  get {
    return radius * 2
  }
  
  set {
    radius = newValue / 2
  }
  
}

diameter = 30
diameter

diameter = 50
radius

/*:
 ### Problem: Find Area
 **Description:** There is a stored property, `sideLength`. Create a function that calculates the area of a square.
 */
import Foundation

var sideLength: Double = 100

var area: Double {
  get {
    return sideLength * sideLength
  }
  
  //  set(newValue) {
  //    side = sqrt(newValue)
  //  }
  
  set(newArea) {
    sideLength = sqrt(newArea)
  }
  
}
area = 9
sideLength




//: Property Observers

// willSet is called just before the value is stored.
// didSet is called immediately after the new value has been stored.

var myGrade: Int = 80 {
  
  willSet(newGrade) {
    print("About to change your grade to \(newGrade)")
  }
  
  didSet(oldGrade) {
    print("you had \(oldGrade) previously. Now you have \(myGrade)")
  }
  
}

myGrade = 100


/*:
 ### Problem: User Login
 **Description:** Create a function that contains a `guard statement` which checkcs whether the user is providing good nutrients for plants.
 */

//: Applicaton
var isUserLoggedIn: Bool = false {
  willSet(newValue) {
    print("The user has tried something")
  }
  didSet {
    if isUserLoggedIn {
      print("The user has switched from \(oldValue) to \(isUserLoggedIn)")
      // animation logic
      // change background color
      // ..More
    }
  }
  
}

isUserLoggedIn = true

