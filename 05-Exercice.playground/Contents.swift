import Foundation

/// Write a function that calculates the average grade of an array of grades.
/// - Parameter grades: The grades.
/// - Returns: The average value.
/// - Important: The function must filter invalid grades, i.e grades below `0` or above `20`.


/// Write a function that convert a numeric grade to a letter grade.
/// - Parameter grade: The numeric grade.
/// - Returns: A grade letter, A, B, C, D, E
/// - Important: Invalid grade returns a `nil` value.
/// * E: from 0 to 3
/// * D: from 4 to 7
/// * C: from 8 to 11
/// * B: from 12 to 15
/// * A: from 16 to 20


/// Write a function that given a letter grade, returns a text message.
/// - Parameter grade: The grade letter.
/// - Returns: The grade comment.
/// - Important: Invalid grade returns a `nil` value.
/// * E: "Try harder next time, do not hesitate to contact your teacher for some clarifications"
/// * D: "Below average"
/// * C: "Decent work, try to spend more time studying"
/// * B: "Good work"
/// * A: "Excellent work"

let grades: [Double] = (0...15).map { _ in
    Double.random(in: -4...32)
}

// 1. calculate the average grade

// 2. determine the grade letter

// 3. get the matching message
