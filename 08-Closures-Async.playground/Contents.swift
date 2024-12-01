import Foundation

// **********************************************************************
// MARK: - Making things asynchronous

// MARK: Closures
/**
 Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to closures, anonymous functions, lambdas, and blocks in other programming languages.
 https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/
 */

/// Perform a long running data loading task.
/// - Parameter then: The completion **closure**.
func loadSomeDataForAWhile(from path: String, then: @escaping (Data) -> Void) {
    // imagine this loads a really large file
    DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
        let data = Data(path.utf8) 
        then(data)
    }
}

// -> full syntax
loadSomeDataForAWhile(from: "file:///some/path", then: { (data: Data) -> Void in
    // handle the data here
    print(data)
})
print("I will be executed before the closure")

// -> shortened syntax, with implicit types
loadSomeDataForAWhile(from: "file:///some/path", then: { data in
    // handle the data here
    print(data)
})
print("I will be executed before the closure")

// -> extra shortened syntax with anonymous parameter
loadSomeDataForAWhile(from: "file:///some/path", then: {
    // handle the data here
    print($0) // -> $0 is the data. If multiple parameters, $0, $1, $2... etc.
})
print("I will be executed before the closure")

// -> super shortened where closure is after the parenthesis
// NB: Only works because the closure is the last parameter
// of `loadSomeDataForAWhile`
loadSomeDataForAWhile(from: "file:///some/path") {
    // handle the data here
    print($0) // -> $0 is the data. If multiple parameters, $0, $1, $2... etc.
}
print("I will be executed before the closure")

// MARK: - async / await

func fetchRemoteData(at url: URL) async -> Data {
    let data = /* await */ Data()
    return data
}

// We can not call this right away, we are in a synchronous context
// await fetchRemoteData(at: URL(string: "https://www.example.com")!)
Task {
    let data = await fetchRemoteData(at: URL(string: "https://www.example.com")!)
}
