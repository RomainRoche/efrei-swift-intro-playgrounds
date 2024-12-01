import Foundation

// **********************************************************************
// MARK: - Protocols

/// As a bonus, meet `typealias`
typealias Grade = Int

/// A `protocol` defines a set of required properties and methods, without providing
/// implementation details. Any type (`struct`, `class` or even `enum`) can conform
/// to a protocol.
protocol Subject {
    /// A property than can be read
    var topic: String { get }
    
    /// A property than can be read and set.
    var solution: String? { get set }
    
    /// A function for some logic.
    func evaluate(with response: String) -> Grade
}

/// Another bonus, meet `final`.
final class SwiftSubject: Subject {
    
    let topic: String = "What is the best programming language in the world?"
    
    var solution: String?
    
    /// Of course we can have additional properties not
    /// defined in the protocol.
    var date: Date = Date()
    
    func evaluate(with response: String) -> Grade {
        return response == solution
        ? Grade.random(in: 10...20)
        : Grade.random(in: 0...9)
    }
    
}

let swifty = SwiftSubject()
swifty.solution = "Swift is the best"
swifty.evaluate(with: "I prefer Kotlin")
swifty.evaluate(with: "Swift is the best")

/// Extension can be applied to a Struct, a Class... but also a protocol! Anything than conforms to
/// `Subject` will have the implementation defined in the extension.
extension Subject {
    
    func extraPoints(for response: String) -> Int {
        response.contains("Objective-C")
        ? 20
        : 0
    }
    
}

/// If we uncomment this, `SwiftSubject` has an implementation that replaces
/// the default one from the `Subject` extension.
//extension SwiftSubject {
//    
//    func extraPoints(for response: String) -> Int {
//        9000
//    }
//    
//}

swifty.extraPoints(for: "I used to work in Objective-C but now I prefer Swift")
swifty.extraPoints(for: "I used to work in Java but now I prefer Swift")
