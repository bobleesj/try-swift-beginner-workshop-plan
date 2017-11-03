/*:
 ## Session 9: Intro to Swift Memory Management
 ### 9.3 The difference between `unowned` and `weak`
 - Be able to differentiate between `weak` and `unowned`
 */

//: Design Class
class BobClass {
  var bobClosure: (() -> ())?
  var name: String = "Bob"
  
  init() {
    // weak self
    bobClosure = { [unowned self] in
      //      guard let object = self else {
      //        return
      //      }
      print("\(self.name) the Developer")
      
    }
  }
  
  deinit {
    print("Bobclass gone")
  }
}

var bobClass: BobClass? = BobClass()
bobClass?.bobClosure?()
bobClass = nil


//: Design Independent Class
class Owner {
  var creditCard: CreditCard?
  deinit { print("Owner gone") }
}

//: Design Dependent Class
class CreditCard {
  unowned let owner: Owner
  
  init(enterOwner: Owner) {
    owner = enterOwner
  }
  
  deinit {
    print("Card gone")
  }
  
  
}

//: Create Instances
// var bob: Owner? = Owner()
// var myCard = CreditCard(enterOwner: bob!)
// bob?.creditCard = myCard
//bob = nil
// myCard.owner // crash
