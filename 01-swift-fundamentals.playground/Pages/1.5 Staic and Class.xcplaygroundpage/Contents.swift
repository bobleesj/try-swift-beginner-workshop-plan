/*:
 ## Session 1: Swift Fundamentals
 ### 1.5 Static and Class
 - Be able to identify the practical usage of static methods and properties
 - Be able to distinguish between staitc and class
 */

//: **Structs:** Static Only
struct FavoriteFood {
  static var Indian = "Tandoori chicken"
  static var Korean = "Korean BBQ"
  static var American = "Pizza"
  
  static func order(food: String) {
    print("Getting \(food) for you")
  }
}

FavoriteFood.Indian
FavoriteFood.order(food: "Ramen")

//: **Classes:** Class and Static
class GrandParent {
  static var numberOfYearsInMarriage = 30
  static func introStatic() {
    print("We've been married for \(numberOfYearsInMarriage)")
  }
  
  class func introClass() {
    print("We've been married for \(numberOfYearsInMarriage)")
  }
}

//: > **Rule:** You may override `class`. You may not override `static`

/*:
 ### Problem: Create a contact list
 **Description:** Create a contact list of your family using `static` properties.
 */

struct Contact {
  static let Mom = "010-3942-1231"
  static let Father = "010-2315-2343"
  static let Me = "010-3634-3984"
}
