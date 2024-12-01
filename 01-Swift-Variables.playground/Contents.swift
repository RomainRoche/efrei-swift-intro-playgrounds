import Foundation

// ********************************************************************** //
// MARK: - `let` vs `var`

var greeting = "Hello, playground"
greeting = "Hello again!"

let notGreeting = "Not so great"
//notGreeting = "I said no!"  // uncomment, and face the compiler's wrath

// MARK: Strongly typed

/// Swift is strongly typed, but the type can be implicit
let explicitGreeting: String = "I said I am a string!"

// MARK: Common data types

let int: Int = 10
let double: Double = 10.0
let bool: Bool = true
let string: String = "Hello"
let array: [Int] = [1, 2, 3]
let dictionary: [String: Int] = ["key": 1, "key2": 2]

/// - About `Double`
let float: Float = 10.0         // Looks like double, but less accurate (15 decimal vs 6 decimal)
var explicitaDecimal = 11.0     // I'm a Double by default

// ********************************************************************** //
// MARK: - Optionals

var optionalText: String? = nil
optionalText = "Lorem ipsum?"

// access properties / methods on optionals
optionalText?.uppercased()

// force unwrap with `!`, this is dangerous 🧨
let forceUnwrap = optionalText!

optionalText = nil
//let failingForceUnwrap = optionalText!


