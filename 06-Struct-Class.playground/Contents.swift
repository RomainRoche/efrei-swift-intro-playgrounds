import Foundation

// **********************************************************************
// MARK: - Struct, Class

// MARK: Class

/// - Classes can hold data (properties) and have behavior (methods).
/// - Classes are *reference types* (more on that later).
/// - Classes can be subclassed.
class Teacher {
    let firstName: String
    let lastName: String
    var subject: String
    
    init(firstName: String, lastName: String, subject: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.subject = subject
    }
    
    func teaches(subject: String) -> Bool {
        self.subject == subject // notice `self`
    }
    
}

/// - A subclass (that does not do much)
class AwesomeTeacher: Teacher {
    
}

// MARK: Struct

/// - Structs can hold data (properties) and have behavior (methods).
/// - Structs are *value types* (more on that later).
/// - Structs can **NOT** be subclassed.
struct Student {
    let firstName: String
    let lastName: String
    var group: String
    
    /// Computed property: can not be set, considered as a `let` property.
    var fullName: String {
        "\(firstName) \(lastName)"
    }

// You actually do not need to declare it, it is implicit
//    init(firstName: String, lastName: String, group: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.group = group
//    }
    
    func isFrom(group: String) -> Bool {
        self.group == group // notice `self`
    }
    
}

// MARK: - Reference type (class) VS Value type (struct)

/**
 * - A *reference type* is a pointer to a value in memory.
 * - A *value type* is not a direct pointer to the value in memory.
 */

let teacher = Teacher(firstName: "John", lastName: "Doe", subject: "Swift introduction")
let student = Student(firstName: "John", lastName: "Doe", group: "B3 Dev")

var otherStudent = student  // this is another student, it MUST be a var to be modified
// modifying a Student does not modify the first one
otherStudent.group = "B4 Dev"
student.group
otherStudent.group
student.isFrom(group: "B4 Dev")

let otherTeacher = teacher  // this is the same teacher
// while modifying a Teacher modifies both -> same reference to the same instance
otherTeacher.subject = "Android socks"
teacher.subject
otherTeacher.subject

// Same goes while passing a Teacher as parameter
// - no need to be `inout`
func setSubject(_ subject: String, for teacher: Teacher) {
    teacher.subject = subject
}
setSubject("Android might be okay", for: otherTeacher)
teacher.subject
otherTeacher.subject

/*
 In real life, we would not use a class to create `Teacher`. Structures are safer since you're sure not to modify a value when passing it as parameter or to another thread.
 */
