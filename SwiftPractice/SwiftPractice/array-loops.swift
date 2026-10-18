// Phase 1, Lesson 3: Arrays and for-in loops.
// Implement the exercise functions here.
// Data, function calls, and expected outputs are in main.swift.
// In Xcode, run the SwiftPractice scheme on My Mac (Command-R).
// Assume all session durations and goals are non-negative integers.

// Task 1: Return the total minutes across all sessions.
// Use a for-in loop and a local accumulator.
// Return a single total after processing the sessions.
// Return the result without printing. Do not use reduce yet.
// An empty array must return 0.
func totalStudyMinutes(sessions: [Int]) -> Int {
    var total: Int = 0
    for minute in sessions {
        total = total + minute
    }
    return total
}

// Task 2: Count the sessions that reach or exceed a per-session goal.
// Signature: func countGoalSessions(sessions: [Int], goal: Int) -> Int
// Use a for-in loop, a condition, and a local counter.
// Compare each duration with goal, rather than comparing the combined total.
// Use the supplied goal rather than hard-coding 90.
// Return the count without printing. Do not use filter yet.
// An empty array must return 0.
// TODO: Write your function here, then uncomment its calls in main.swift.

 

func countGoalSessions (sessions: [Int], goal: Int) -> Int {
    
    var count: Int = 0 ;
    for session in sessions {
        if session >= goal {
            count = count + 1
        }
        
    }
    return count ;
    
}



// Task 3: Print a summary by composing your two functions.
// Signature: func printStudySummary(sessions: [Int], goal: Int)
// Store each function's result in a local constant.
// Use sessions.count for the number of sessions.
// Keep calculations in Tasks 1 and 2 instead of repeating their loops.
// Print three lines: session count, total minutes, and goal-reaching count.
// TODO: Write your function here, then uncomment its calls in main.swift.

func printStudySummary(sessions: [Int], goal: Int) {
    print("Sessions: \(sessions.count)")

    print("Total: \(totalStudyMinutes(sessions: sessions))")
    print("Goal reached: \(countGoalSessions(sessions: sessions, goal: goal))")
}

// Review after completing the tasks:
// 1. What value does the loop variable hold on each iteration?
// 2. Why do the accumulator and counter need var?
// 3. Why must the result be returned after the loop rather than inside it?
// 4. State time complexity and auxiliary space for Tasks 1 and 2.
// 5. Does calling two separate O(n) functions make Task 3 O(n squared)? Why?
