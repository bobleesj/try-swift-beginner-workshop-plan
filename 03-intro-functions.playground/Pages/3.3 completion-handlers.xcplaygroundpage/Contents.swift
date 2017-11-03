/*:
 ## Session 3: Intro to Swift Functions
 ### 3.3 Completion Handlers
 - Be able to execute code only after one another using closures
*/

//: > **Definition:** Do something when something has been done


//: Design Handler Block
let myHandlerBlock: (Bool) -> () = { (isSuccess) in
  if isSuccess {
    print("Download has been done")
  }
}

let handlerBlock: (Bool) -> () = {
  if $0 {
    print("Download has been done")
    // animation
  }
}

myHandlerBlock(true)

//: Design Function
func downloadAnImage(completionBlock: (Bool) -> Void) {
  for _ in 1...100 {
    print("Downloading")
  }
  
  completionBlock(true)
}

//: Pass Closure Indirectly
downloadAnImage(completionBlock: handlerBlock)

//: Pass Closure Directly
downloadAnImage(completionBlock: { (isSuccess) in
  if isSuccess {
    print("Done downloading")
  }
})

downloadAnImage(completionBlock: {
  if $0 {
    print("Done downloading")
    // animation
  }
})


//: Another Practical Example
let handler: ([String]) -> Void = { (array) in
  print("Compressing iamge, \(array)")
  // Compress the image
  // Resize
}

func compressImages(doneBlock: ([String]) -> Void) {
  for _ in 1...10 {
    print("Compressing image")
  }
  
  doneBlock(["image1", "image2", "image3", "image4"])
}


//: Enter Closure Indirectly
compressImages(doneBlock: handler)

//: Enter Closure Directly
compressImages(doneBlock: { (images: [String]) in
  print("Done working, \(images)")
  // Resize
})

