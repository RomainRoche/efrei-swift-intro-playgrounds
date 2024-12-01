import Foundation

/// Calculate the average grade of an array of grades.
/// - Parameter grades: The grades.
/// - Returns: The average value.
/// - Important: The function must filter invalid grades, i.e grades below `0` or above `20`.
func averageGrade(with grades: [Double]) -> Double {
    
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
    
}

let grades: [Double] = (0...15).map { _ in
    Double.random(in: -4...32)
}

// calculate the average grade

// determine the grade category and the matching message
