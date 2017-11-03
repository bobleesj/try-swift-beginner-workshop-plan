/*:
 ## Session 1: Swift Fundamentals
 ### 1.3 Guard Statement
 1. Be able to identify the benefits of using `Guard Statement` over a typical `Else-If Statement`
 */

//: Classic Else-If
func enterPhoneType(phone: String) {
  
  if phone == "iPhoneX" {
    print("This is the phone I'd like to purchase!")
  } else {
    print("I'd rather not use this phone")
  }
  
}

//: Introducing Guard Statement
func enterPhoneTypeWithGuard(phone: String) {
  
  guard phone == "iPhoneX" else {  // false block
    print("I'd rather not use this phone")
    return // if false, exit from the function
  }
  
  // Benefits:
  // 1. Early exit.
  // 2. No bracket.
  // 3. Feeling zen.
  
  print("\(phone) is the phone I'd like to purchase!")
}

enterPhoneTypeWithGuard(phone: "GalaxyNote8")
enterPhoneTypeWithGuard(phone: "iPhoneX")



/*:
 ### Problem: Grow the plant
 **Description:** Create a function that contains a `guard statement` which checkcs whether the user is providing good nutrients for the plant.
 */

// Only "Water", "Soil", "Sunlight" allowed as an input

func growPlant(material: String) {
  
  if material == "Water", material == "Soil", material == "Sunglight" {
    print("The plant is growing right")
  } else {
    print("Please feed the plant right")
  }
  
}


func growPlantWithGuard(material: String) {
  
  guard material == "Water", material == "Soil", material == "Sunglight" else {
    print("Please feed the plant right")
    return
  }
  
  print("The plant is growing right")
}


