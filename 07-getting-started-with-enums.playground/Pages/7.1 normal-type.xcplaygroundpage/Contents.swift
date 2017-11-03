/*:
 ## Session 7: Getting Started with Enums
 ### 7.1 Enum with Normal Type
 - Be able to recognize enum can be used as a type
 - Be able to apply `Switch Statement` with enums to write safe code
 */



enum ProgrammingLanguage {
  case swift
  case javascript
  case go
  case java
}

enum AppleProduct {
  case iPhone, iMac, iWatch, iPod, iMovie
}


let iPhoneX = AppleProduct.iPhone // init

switch iPhoneX {
case .iPhone:
  print("Getting iPhone X tonight!")
default:
  print("Getting something...")
}


/*:
 ### Problem: Create a contact list
 **Description:** Create an enum called, `Contact` and apply `Switch` to print phone numbers
 */

enum Contact {
  case mother
  case father
  case sister
}

let mother = Contact.mother

switch mother {
case .mother:
  print("010-3412-2312")
case .father:
  print("010-3231-2414")
case .sister:
  print("010-2413-2313")
}

