// Day 1: Your first Swift exercise.

// Learn let, var, String, Int, Double, Bool, if, and string interpolation.
// This is a starting point, not a solution. Edit the file yourself.
//
// Task: Print a study session report in the console.
// 1. Store your name and the topic in two constants.
// 2. Store the study minutes in a variable, then increase it by 15 minutes.
// 3. The goal is 90 minutes. Calculate the remaining minutes without showing a negative value.
// 4. Print your name, the topic, completed minutes, and remaining minutes.
// 5. If you reach the goal, print a message that the session is complete.
// 6. Try starting values of 30, 75, and 100, and explain the different results.
//
// Review: When did you use let and when did you use var, and why?
// Also describe one difference you noticed between Swift and Dart.

print("بدأت أول جلسة Swift")

// TODO: Write your attempt here.

// let / var / String / Int / Double / Bool / if / and string interpolation
let topic  =  "IOS Development"
let myName = "Ziad"
var studiedMinutes = 30
var remainingMinutes = 0
studiedMinutes += 15

let studyGoal = 90

if studiedMinutes >= studyGoal {
    remainingMinutes = 0
    print("\(myName) has completed \(studiedMinutes) minutes of \(topic) study.")
    print("\(remainingMinutes) minutes remaining.")
} else {
    remainingMinutes = studyGoal - studiedMinutes
    print(myName +  " has studied \(studiedMinutes) minutes of \(topic), \(remainingMinutes) minutes remaining.")
}
print(studiedMinutes)
print("""
Differences between Swift and Dart:
Swift let is similar to Dart final: both prevent reassignment.
Dart const requires a compile-time constant value.
Dart uses semicolons to end many statements, not every line.
Dart requires parentheses in if, while, and for syntax; Swift does not require them.
Both languages support + for string concatenation, but their string interpolation syntax differs.
""")
