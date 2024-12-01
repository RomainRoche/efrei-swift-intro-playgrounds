import Foundation

// **********************************************************************
// MARK: - Functions

/// This is a function, nothing spectacular.
func doSomething() {
    "I'm doing something"
}
doSomething()

/// Of course it can accept parameters and return stuffs 🎁
/// - Parameter integer: An integer.
/// - Parameter multiplier: Do I need to explain?$
/// - Returns: The multiplication between both.
func multiply(integer: Int, multiplier: Int) -> Int {
    return integer * multiplier
}
multiply(integer: 2, multiplier: 4)

/// We can name parameters different ways...
/// - Parameter integer: An integer.
/// - Parameter multiplier: Do I need to explain?$
/// - Returns: The multiplication between both.
func multiply(this integer: Int, with another: Int) -> Int {
    // 👋 Implicit return! Works if one line only
    integer * another
}
multiply(this: 2, with: 4)

/// Or also...
/// - Parameter integer: An integer.
/// - Parameter multiplier: Do I need to explain?$
/// - Returns: The multiplication between both.
func multiply(_ integer: Int, by multiplier: Int) -> Int {
    return integer * multiplier
}
multiply(2, by: 4)

/// Functions parameters can have default values
func increment(_ value: Int, of increment: Int = 1) -> Int {
    value + increment   // notice the implicit `return` statement
}
increment(3)
increment(3, of: 2)

/// NB: Functions parameters are like `let` values, not mutable
func increment(_ value: Int) {
//    value = value + 1 // uncomment, and face the compiler's wrath
}

/// Unless..?
func incrementInOut(_ value: inout Int) {
    value = value + 1
}
var toIncrement = 3
incrementInOut(&toIncrement)
//incrementInOut(4) // uncomment, and face the compiler's wrath

// MARK: Guard!

func doItOrNot(_ doIt: Bool) -> String{
    guard doIt else {
        return "I am NOT doing it"
    }
//    if !doIt {
//        return
//    }
    return "I am doing it"
}

doItOrNot(true)
doItOrNot(false)

func doItOrNot(_ doIt: Int?) -> String {
    guard let doIt else {
        return "I am NOT doing it"
    }

    return "I am doing it with '\(doIt)'"
}

doItOrNot(nil)
doItOrNot(Int.random(in: 0...9))
