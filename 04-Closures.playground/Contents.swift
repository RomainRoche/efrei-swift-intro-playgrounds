import Foundation

// **********************************************************************
// MARK: - Closures

/// Closures are anonymous functions.
/// * `someClosure` is the variable holding the closure.
/// * `(String, Int)` is the definition of the parameters types (if any)
/// * `-> Bool` is the return type. Could be `Void` if returns nothing.
let someClosure: (String, Int) -> Bool = { (question: String, age: Int) -> Bool in
    question // print
    age
    return age >= 40
}
someClosure("Am I old?", Int.random(in: 0...99))

/// Can be written in a shorter way with **implicit** parameters types and return type
let otherClosure: (String, Int) -> Bool = { question, age in
    question // print
    age
    return age >= 40
}
otherClosure("Am I old?", Int.random(in: 0...99))

/// Can be function's parameters. It will even be how you use closures most of the time.
func emoji(for condition: (Int) -> Bool) {
    let isTrue = condition(Int.random(in: 0...99))
    isTrue ? "👍" : "👎"
}

/// Normal syntax
emoji(for: { number in
    number // print
    return number < 40
})

/// Short syntax
emoji { number in
    number // print
    return number < 40
}

/// Even shorter syntax with parameter alias
emoji {
    $0
    return $0 < 40
}

// MARK: - A common use of closures: operations on collections

/// An array of 20 randoms numbers
let randomNumbers = (1...20).map { _ in Int.random(in: 0...99) }

/// Do something for each value
randomNumbers.forEach {
    print($0)
}

///  Filter values
let oddNumbers = randomNumbers.filter { !$0.isMultiple(of: 2) }

/// Find a value
let multipleOfFive = randomNumbers.first(where: { $0.isMultiple(of: 5) })

/// Transform values
let textsValues = randomNumbers.map { "\($0)" }
