# Swift Beginner Workshop try! Swift @Bangalore
**Purpose:** The workshop is designed for software developers with prior experience in languages such as `Java`, `Objective-C`, and `Javasript`. The outcome of this workshop is to help the participants familiarize with the unique features and syntax of the Swift Programming Langauge by learning its unconventional approaches to solve design problems such as protocol oriented, value oriented, and functional programming. The participants are expected to be ready for the main event on Nov 17th. To make the workshop interactive and engaging, throughout the session, each topic contains a real-life applicable quiz/problem which the participatns solve on their own. Shorlty after, I will go through the problem.

<br>
<br>

## Session 1: Swift Fundamentals
### 1.1 Types
- Be able to identify mutable and immutable value types with `let` and `var`
- Be able to understand what `type` means by refeering to `class` and `struct`.

### 1.2 Intro to Functions
- Be able to create functions with and without arguments
- Be able to identify the motivation behind local parameters.
> **Quiz:** Create a function that multiples two numbers with one unnamed parameter.

### 1.3 Guard Statement
- Be able to identify the benefits of using `guard` of using a typical `else-if`
> **Quiz:** Create a function that contains a guard statement which checkcs whether the user is providing good nutrients for plants.

### 1.4 Observer and Computed Property
- Be able to justify the usage case of using property observers by applying `willSet` and `didSet`
> **Quiz:** Add an property observer to `isUserLoggedIn` and prints whether the user is logged in or not upon changes.
- Be able to recognize the difference between `get` and `set` by calculating the diameter of a circle.
- Be able to identify benefits of using `get` only properties
> **Quiz:** There is a stored property, `sideLength`. Create a function that calculates the area of a square.  

### 1.5 Staic and Class
- Be able to identify the practical usage of static methods and properties
- Be able to distinguish between `staitc` and `class` when it comes to inheritance
> **Quiz:** Create a class that stores your contact list using `static` properties.

<br>
<br>

## Session 3: Intro to Swift Functions
### 3.1 Intro to Closures Part 1
- Be able to recognize that Swift functions are called global closures.
- Be able to familiarize with the Swift closure syntax.
- Be able to create a closure block with various versions.
> **Quiz:** Express the function below in a variety of ways

### 3.2 Intro to Closures Part 2
- Be able to return a closure block
- Be able to pass a closure block as a parameter
> **Quiz:** Enter a number and returns its sqaured value. The function two arguments: `Int` and `(Int) -> (Int)`

### 3.3 Completion Handlers
- Be able to execute code only after one another using closures

### 3.4 Trailing Closures
- Be able to spot when to use trailing closures


<br>
<br>

## Session 4: Functional Swift

### 4.1 Intro to Functional Swift
- Be able to understand the functional paradigm.
- Be able to recognize the difference between imperative and declarative style.
- Be able to use closure to create a custom `filter` function.

- **Quiz:** Create a function that converts `[1, 2, 3, 4, 5]` to `[1, 4, 9, 16, 25]` in one line

### 4.2 Map
- Be able to `[1, 2, 3, 4, 5]` to `[1, 4, 9, 16, 25]` in one line

<br>
<br>

## Session 7: Getting Started with Swift Enums
### 7.1 Normal Type
- Be able to recognize enum can be used as a type.
- Be able to apply `Switch Statement` with enums to write safe code.
- **Quiz:** Create a contact list along with `Switch Statement`.

### 7.2 Raw Value
- Be able to create type safe and string literal free code using `raw value`.

### 7.3 Associated Value
- Be able to apply `Associated Value` to development.
- Be able to use `case let` to capture associated value.
- **Quiz:** Create an enum called, Button with a few types and returns its name.

<br>
<br>

## Session 9: Intro to Swift Memory Management
### 9.1 Swift Capture List
- Be able to recognize Swift closure as a reference type.
- Be able to use capture lists to prevent the unique behavior.

### 9.2 Intro to Automatic Reference Counting
- Be able to how allocation/deallocation is managed by the `ARC`

### 9.3 The difference between `weak` and `unowned`
- Be able to differentiate between weak and unowned


> **Note:** Intermediate to advanced topics including [the delegate pattern](https://www.bobthedeveloper.io/blog/the-complete-understanding-of-swift-delegate-and-data-source), [lazy init with closure](https://www.bobthedeveloper.io/blog/swift-lazy-initialization-with-closures), [@escaping](https://www.andrewcbancroft.com/2017/04/26/what-in-the-world-is-an-escaping-closure-in-swift/
), @autoclosures, [access control](https://www.bobthedeveloper.io/blog/the-complete-understanding-of-access-control-in-swift) are not covered in this workshop. However, the participants are encouraged to study on their own and ask questions via Slack before the main event.
