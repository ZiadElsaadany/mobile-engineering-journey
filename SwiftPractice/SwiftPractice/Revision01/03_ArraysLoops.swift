// Topic review: Arrays and loops: accumulation, counting, and building a collection
// Exactly three questions. Solve each question independently in Swift and Dart.
// Only suggested names are supplied. Choose your own inputs, types, declarations, and calls.
// No function signatures, implementation templates, or ready-made test calls are provided.
// Use the examples to write your own checks, including the boundary cases.
// Explain your choices when submitting a solution.
// Write function definitions and your solutions in this file.
// Write executable calls in main.swift and run the SwiftPractice scheme on My Mac with Command-R.

// QUESTION 1: Total study minutes
// Suggested name: totalMinutes
// Return the sum of a supplied collection of session durations.
// Examples:
// [15, 30, 45] -> 90.
// [] -> 0.
// [45] -> 45.
// [0, 15, 0] -> 15.
// [10, 10, 10] -> 30.
// Assume all durations are non-negative integers.
// Use a loop. Do not print inside the calculation.
// Write Question 1 below.


func totalMinutes (  lst: [Int] )->Int {
    
    var sum: Int  = 0 ;
    for minute in lst  {
        sum += minute;
    }
    return sum ;
}


// QUESTION 2: Count long sessions
// Suggested name: countLongSessions
// Return the number of sessions that reach or exceed a supplied per-session goal.
// Examples:
// [30, 90, 45, 115], goal 90 -> 2.
// [], goal 90 -> 0.
// [89, 90, 91], goal 90 -> 2.
// [20, 60, 80], goal 60 -> 2.
// [0, 15], goal 0 -> 2.
// Assume non-negative integer durations and goals.
// Use a loop. Do not print inside the calculation.

  // Write Question 2 below.


func   countLongSessions (  lst: [Int],  goal: Int )->Int {
    var count: Int = 0
    for result in lst  {
        if result >= goal {
            count += 1
        }
    }
    return count;
    
}
// QUESTION 3: Select unfinished sessions
// Suggested name: sessionsBelowGoal
// Return a new collection containing only durations strictly below a supplied goal.
// Preserve the original order and any repeated values. Keep the input unchanged.
// Examples:
// [30, 90, 45, 115], goal 90 -> [30, 45].
// [], goal 90 -> [].
// [90, 115], goal 90 -> [].
// [30, 30, 10], goal 90 -> [30, 30, 10].
// [0, 15], goal 0 -> [].
// Use a loop. Do not use filter, where, map, reduce, or fold.
// Do not print inside the calculation.
// Write Question 3 below.

func sessionsBelowGoal(session : [Int] , goal: Int)-> [Int] {
    var result : [Int] = []
    for session in session  {
        if session < goal {
            result.append(session)
        }
    }
    
    return result;
}
