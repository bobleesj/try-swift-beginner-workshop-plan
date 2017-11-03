/*:
 ## Session 7: Intr to Swift Enums
 ### 7.3 Enum with Associated Value
 - Be able to use `case let` to capture associated value
 */


//: Barcode Example from the Documentation
enum Barcode {
  case upc(Int, Int, Int, Int)
  case qrCode(String)
}

var myQRCode = Barcode.qrCode("XYZ")
var upcCode = Barcode.upc(4, 2, 5, 5)

//: Validation
if case let Barcode.qrCode(value) = myQRCode {
  print("This is a qrcode")
  print(value)
}

if case let Barcode.upc(numberSystem, manufacturer, product, check) = upcCode {
  print("numbersystem:", numberSystem)
  print("manufaturer:",manufacturer)
  print("product:",product)
  print("check:",check)
}

let code = myQRCode



//: Capture Individually
switch code {
case .upc(let numberSystem, let manufacturer, let product, let check):
  print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
  print("QR code: \(productCode).")
}

//: Capture Concisely
switch code {
case let .upc(numberSystem, manufacturer, product, check):
  print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
  print("QR code: \(productCode).")
}

