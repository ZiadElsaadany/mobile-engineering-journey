// Phase 1, Lesson 3: Arrays and for-in loops.
// Goal: Summarize multiple study sessions using functions and loops.
// Prerequisites: let/var, Int, Bool, if, functions, and return.
// Complete one task at a time. Write the implementations yourself.
// Assume all session durations and goals are non-negative integers.
// Run from the repository root: swift week01/day03_arrays_loops.swift

// Worked example: Store and read an ordered collection.
// [Int] means an array whose elements are Int values.
let exampleMinutes: [Int] = [30, 45, 90]
print(exampleMinutes[0])      // 30: indexes start at 0.
print(exampleMinutes.count)   // 3: number of elements.
print(exampleMinutes.isEmpty) // false.

// Only use an index that exists. Reading index 0 from an empty array crashes.
// This for-in loop visits each element, in order.
// minutes is the current element's value, not its index.
for minutes in exampleMinutes {
    print("Session: \(minutes) minutes")
}

// A var array can be changed; append adds an element at the end.
// A let Swift array cannot be appended to or have an element replaced.
var additionalMinutes: [Int] = []
additionalMinutes.append(15)
print(additionalMinutes) // [15]

// Task 1: Return the total minutes across all sessions.
// Signature: func totalStudyMinutes(sessions: [Int]) -> Int
// Use a for-in loop and a local accumulator.
// Return a single total after processing the sessions.
// Do not print inside this function. Do not use reduce yet.
// An empty array must return 0.
// TODO: Write your function here.
func totalStudyMinutes(sessions: [Int]) >> Int {
    var total: Int = 0
    for minute in sessions {
        total=total+minute
    }
    return total
}

Int result = totalStudyMinutes(sessions: exampleMinutes)
print(totalStudyMinutes(sessions: [30, 45, 90, 115]))
print(totalStudyMinutes(sessions: []))
print(totalStudyMinutes(sessions: [45]))
print(totalStudyMinutes(sessions: [0, 15, 0]))
print(totalStudyMinutes(sessions: [10, 10, 10]))

// After implementing Task 1, uncomment these calls:
// print(totalStudyMinutes(sessions: [30, 45, 90, 115])) // 280
// print(totalStudyMinutes(sessions: []))              // 0
// print(totalStudyMinutes(sessions: [45]))            // 45
// print(totalStudyMinutes(sessions: [0, 15, 0]))      // 15
// print(totalStudyMinutes(sessions: [10, 10, 10]))    // 30

// Task 2: Count the sessions that reach or exceed a per-session goal.
// Signature: func countGoalSessions(sessions: [Int], goal: Int) -> Int
// Use a for-in loop, a condition, and a local counter.
// Compare each duration with goal. Do not compare the combined total with goal.
// Use the supplied goal rather than hard-coding 90.
// Return the count without printing. Do not use filter yet.
// An empty array must return 0.
// TODO: Write your function here.

// After implementing Task 2, uncomment these calls:
// print(countGoalSessions(sessions: [30, 45, 90, 115], goal: 90)) // 2
// print(countGoalSessions(sessions: [], goal: 90))               // 0
// print(countGoalSessions(sessions: [89, 90, 91], goal: 90))     // 2
// print(countGoalSessions(sessions: [20, 60, 80], goal: 60))     // 2
// print(countGoalSessions(sessions: [0, 15], goal: 0))           // 2

// Task 3: Print a summary by composing your two functions.
// Signature: func printStudySummary(sessions: [Int], goal: Int)
// Store each function's result in a local constant.
// Use sessions.count for the number of sessions.
// Keep the calculations inside Tasks 1 and 2 instead of repeating their loops.
// Print three lines: session count, total minutes, and goal-reaching count.
// TODO: Write your function here.

// After implementing Task 3, uncomment this call:
// printStudySummary(sessions: [30, 45, 90, 115], goal: 90)
// Expected output for this summary:
// Sessions: 4
// Total: 280 minutes
// Goal reached: 2 sessions

// Also try printStudySummary(sessions: [], goal: 90).
// It should show 0 sessions, 0 total minutes, and 0 goal-reaching sessions.

// Review after completing the tasks:
// 1. What value does the loop variable hold on each iteration?
// 2. Why do the accumulator and counter need var?
// 3. Why must the result be returned after the loop rather than inside it?
// 4. State time complexity and auxiliary space for Tasks 1 and 2.
// 5. Does calling two separate O(n) functions make Task 3 O(n squared)? Why?
