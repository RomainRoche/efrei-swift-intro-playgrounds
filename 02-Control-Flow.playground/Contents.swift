import Foundation

// **********************************************************************
// MARK: - Control flow

// MARK: if / else
let age: Int = .random(in: 0...100)
if age < 18 {
    "I can not vote 👦"
} else if age < 40 {
    "I can vote and I feel good 🙆‍♀️"
} else {
    "I can vote but my back hurts 🧓"
}

// MARK: Switch
let someValue = Int.random(in: 0...2)
switch someValue {
case 0:     "0"
case 1:     "1"
case 2:     "2"
default:    "?"
}

// more advanced switch 💪
switch age {
case ..<18:     "I can not vote 👦"
case 18..<40:   "I can vote and I'm okay 🙆‍♀️"
default:        "I can vote but feel a new pain every morning 🧓"
}

// MARK: For loops
let someRandomNumbers: [Int] = [1, 12, 7, 89, 0, 23, 6, 46]

print("- for loops")
for number in someRandomNumbers {
    print(number)
}

print("- for i in")
for i in 0..<someRandomNumbers.count {
    print(someRandomNumbers[i])
}

/// Where is the error here? :)
for i in 0...someRandomNumbers.count {
//    print(someRandomNumbers[i])
}

print("- for with `where` condition")
/// NB: We can add some conditions to the for loop
for oddNumber in someRandomNumbers where oddNumber % 2 == 1 {
    print(oddNumber)
}

// MARK: While
print("- while")
var i = 0
while i < someRandomNumbers.count {
    print(someRandomNumbers[i])
    i += 1  // i = i + 1
}

print("- repeat while") // BE CAREFUL
var j = 0
repeat {
    print(someRandomNumbers[j])
    j += 1
} while j < someRandomNumbers.count

// **********************************************************************
// MARK: - Conditions and optionals

var someOptional: Int? = nil
//someOptional = Int.random(in: 0...9)

if let unwrapped = someOptional {
    "I have been unwrapped, \(unwrapped)"
} else {
    "I am nil"
}
