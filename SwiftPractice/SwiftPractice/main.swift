// Phase 1, Lesson 3: Arrays and for-in loops.
// This file contains the program's executable statements.
// Implement exercise functions in array-loops.swift.
// In Xcode, run the SwiftPractice scheme on My Mac (Command-R).

// Worked example: Store and read an ordered collection.
// [Int] means an array whose elements are Int values.
let exampleMinutes: [Int] = [30, 45, 90]
print(exampleMinutes[0])      // 30: indexes start at 0.
print(exampleMinutes.count)   // 3: number of elements.
print(exampleMinutes.isEmpty) // false.

// Reading index 0 requires a non-empty array.
// The loop variable holds the current value, not its index.
for minutes in exampleMinutes {
    print("Session: \(minutes) minutes")
}

// A var Swift array can be changed; a let Swift array cannot.
var additionalMinutes: [Int] = []
additionalMinutes.append(15)
print(additionalMinutes) // [15]

// Task 1: Call the function defined in array-loops.swift.
let result: Int = totalStudyMinutes(sessions: exampleMinutes)
print(result) // 165

// Verify these results in the console:
print(totalStudyMinutes(sessions: [30, 45, 90, 115])) // 280
print(totalStudyMinutes(sessions: []))              // 0
print(totalStudyMinutes(sessions: [45]))            // 45
print(totalStudyMinutes(sessions: [0, 15, 0]))      // 15
print(totalStudyMinutes(sessions: [10, 10, 10]))    // 30

// Task 2: Uncomment after implementing countGoalSessions.
// print(countGoalSessions(sessions: [30, 45, 90, 115], goal: 90)) // 2
// print(countGoalSessions(sessions: [], goal: 90))               // 0
// print(countGoalSessions(sessions: [89, 90, 91], goal: 90))     // 2
// print(countGoalSessions(sessions: [20, 60, 80], goal: 60))     // 2
// print(countGoalSessions(sessions: [0, 15], goal: 0))           // 2

print(countGoalSessions(sessions: [30, 45, 90, 115], goal: 90))
print(countGoalSessions(sessions: [], goal: 90))
print(countGoalSessions(sessions: [89, 90, 91], goal: 90))
print(countGoalSessions(sessions: [20, 60, 80], goal: 60))     // 2
 print(countGoalSessions(sessions: [0, 15], goal: 0))

// Task 3: Uncomment after implementing printStudySummary.
// printStudySummary(sessions: [30, 45, 90, 115], goal: 90)
// Expected output for this summary:
// Sessions: 4
// Total: 280 minutes
// Goal reached: 2 sessions

printStudySummary(sessions: [1,90,10], goal: 90)

// printStudySummary(sessions: [], goal: 90)
// Expected output for this summary:
// Sessions: 0
// Total: 0 minutes
// Goal reached: 0 sessions


// TOPIC REVIEW: Write your own function calls below.
// Implementations belong in their topic files under Revision01/.
// The earlier lesson examples above still run.
print("Topic review: write your own calls below after implementing a question.")

// Basics: Revision01/01_Basics.swift
// Write your own calls for Questions 1, 2, and 3 here.
printTripBudget(name: "Ziad", ticketPrice: 35.5, ticketCount: 3.0, budget: 120.0)
printStudyProgressReview(topic: "Swift", startingStudyMinutes: 45, goal: 90)
ticketPrice(basePrice: 100, age: 12)
// Functions: Revision01/02_Functions.swift
// Write your own calls for Questions 1, 2, and 3 here.

print(remainingBudget(budget: 100, cost: 40))
print(canAfford(budget: 100, cost: 100))
printBudgetReport(customer: "Ziad", budget: 100, cost: 50)
// Arrays and loops: Revision01/03_ArraysLoops.swift
// Write your own calls for Questions 1, 2, and 3 here.
print(totalMinutes(lst: [0, 15, 0]))
print(countLongSessions(
    lst: [30, 90, 45, 115], goal: 90
))
print(sessionsBelowGoal(session: [90, 115], goal: 90))
// Complexity: answer in Revision01/04_Complexity.swift.
