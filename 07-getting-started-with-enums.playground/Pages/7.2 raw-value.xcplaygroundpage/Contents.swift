/*:
 ## Session 7: Getting Started with Enums
 ### 7.2 Enum with Raw Value
 - Be able to create type safe and string literal free code using `raw value`
 */

/*:
 ### Raw Value
 Swift supports the following types for the value of an enum:
 - Integer
 - Float
 - String
 - Bool
 */
enum Food: String {
  case pizza
  case banana
  case chicken
  case bigMac
}


let stringValueFromPizza = Food.pizza.rawValue // "pizza"


//: Raw Value: Int
enum Days: Int {
  case mon, tue, wed, thu, fri = 10, sat, sun
}
// mon = 0, tue = 1, wed = 2, ... , fri = 10, sat = 11
Days.thu.rawValue

//: Initialization from Raw Value
let possibleeDay = Days(rawValue: 10)
print(possibleeDay)

if let someDay = Days(rawValue: 11) {
  switch someDay {
  case .sat, .sun:
    print("Weekends!!")
  default:
    print("Weekdays!")
  }
} else {
  print("No such day exists")
}



enum IntCategory {
  case small
  case medium
  case big
  case weird
  
  init(number: Int) {
    switch number {
    case 0..<1000 :
      self = .small
    case 1000..<100000:
      self = .medium
    case 100000..<1000000:
      self = .big
    default:
      self = .weird
    }
  }
  
}


IntCategory(number: 12413423432)

//: ### Practical Case
enum HttpError: String {
  case Code400 = "Bad Request"
  case Code401 = "Unauthorized"
  case Code402 = "Payment Required"
  case Code403 = "Forbidden"
  case Code404 = "Page Not Found"
  
  var description: String {
    return self.rawValue
  }
}



//: Practical with Storyboard
enum Storyboard: String {
  case profile
  case setting
  case newsfeed
  
  var identifier: String {
    return self.rawValue
  }
}

let profile = Storyboard.profile
profile.identifier


//: API Guideline Goal
func describeStoryboard(storyboard: Storyboard) -> String {
  switch storyboard {
  case .profile:
    return "\(storyboard.identifier): Profile picture, followers"
  case .setting:
    return "\(storyboard.identifier): Logout, invite"
  case .newsfeed:
    return "\(storyboard.identifier): videos, texts"
  }
}

describeStoryboard(storyboard: .setting)

/*:
 ### Problem: Create string safe button type
 **Description:** Create an enum called, `Button` with a few types and returns its `name`.
 */

//: Cell Identifier
enum Button: String {
  case darkButton
  case whiteButton
  case warningButton
  
  var name: String {
    return self.rawValue
  }
}

Button.darkButton.rawValue // "darkButton"


