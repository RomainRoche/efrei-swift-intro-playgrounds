import Foundation

// **********************************************************************
// MARK: - Error handling

// okay, first enums...
enum Possibility {
    case yes
    case no
    case maybe
    
    // Enum can have computed properties
    var displayValue: String {
        switch self {
        case .yes:      "Yes"
        case .no:       "No"
        case .maybe:    "Maybe"
        }
    }
    
    func mightDo(something: String) -> Bool {
        self == .yes || self == .maybe
    }
}

/// Enums can also conform to Protocols, here the `Error` protocol
/// - Note: An error could be a `struct` or even a `class`.
/// `class` should not be used though since classes are meant to handle logic, not
/// hold data.
enum ArithmeticError: Error {
    case isOdd
    case isNegative(Int)
}

func itCanThrow() throws -> Int {
    let randomized = Int.random(in: -2...2)
    if randomized % 2 == 1 {
        throw ArithmeticError.isOdd
    }
    if randomized < 0 {
        throw ArithmeticError.isNegative(randomized)
    }
    
    return randomized
}

do {
    let value = try itCanThrow()
} catch {
    print(error)
}

// MARK: Using `Result`

/// The return type of this function is a `Result`.
/// - Note: `Result` is an `enum` of two possible values.
/// * A `success`
/// * A `failure`
/// - Important: The `Result` enum has two *generic types*.
/// The *success generic type* can be anything.
/// The *failure generic type* can be anything **that conforms to the Error protocol**
func randomInt() -> Result<Int, ArithmeticError> {
    let randomized = Int.random(in: -2...2)
    if randomized % 2 == 1 {
        return .failure(ArithmeticError.isOdd)
    }
    if randomized < 0 {
        return .failure(ArithmeticError.isNegative(randomized))
    }
    
    return .success(randomized)
}

let randomIntResult = randomInt()
switch randomIntResult {
case .success(let value):
    print(value)
case .failure(let error):
    print(error)
}

