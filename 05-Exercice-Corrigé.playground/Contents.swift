import Foundation

/// Calculate the average grade of an array of grades.
/// - Parameter grades: The grades.
/// - Returns: The average value.
/// - Important: The function must filter invalid grades, i.e grades below `0` or above `20`.
func averageGrade(with grades: [Double]) -> Double {
    var sum: Double = 0
    for grade in grades {
        guard grade >= 0 && grade <= 20 else { continue }
        sum += grade
    }
    return sum / Double(grades.count)
}

/// Must categories grades.
/// - Parameter grade: The grade.
/// - Returns: A grade letter, A, B, C, D, E
/// - Important: Invalid grade returns a `nil` value.
/// * E: from 0 to 3
/// * D: from 4 to 7
/// * C: from 8 to 11
/// * B: from 12 to 15
/// * A: from 16 to 20
func gradeCategory(for grade: Double) -> String? {
    switch grade {
    case 0..<3:     return "E"
    case 3..<7:     return "D"
    case 7..<11:    return "C"
    case 11..<15:   return "B"
    case 15..<20:   return "A"
    default:        return nil
    }
}

/// Must categories grades.
/// - Parameter grade: The grade.
/// - Returns: A grade letter, A, B, C, D, E
/// - Important: Invalid grade returns a `nil` value.
/// * E: "Try harder next time, do not hesitate to contact your teacher for some clarifications"
/// * D: "Below average"
/// * C: "Decent work, try to spend more time studying"
/// * B: "Good work"
/// * A: "Excellent work"
func gradeMessage(forCategory gradeCategory: String) -> String? {
    switch gradeCategory {
    case "E":
        return "Try harder next time, do not hesitate to contact your teacher for some clarifications"
    case "D":
        return "Below average"
    case "C":
        return "Decent work, try to spend more time studying"
    case "B":
        return "Good work"
    case "A":   
        return "Excellent work"
    default:
        return nil
    }
}

let grades: [Double] = (0...15).map { _ in
    Double.random(in: -4...32)
}

// calculate the average grade
let average = averageGrade(with: grades)

// determine the grade category and the matching message
let category = gradeCategory(for: average)
if let category {
    gradeMessage(forCategory: category)
}
