// Swift practice: Functions, parameters, return values, and scope.
// Write the solutions yourself. Complete one task at a time.
// Assume all minute values are non-negative.
// Run from the repository root: swift week01/day02_functions.swift

// A worked example, separate from the tasks:
// func declares a function.
// number is an Int parameter; -> Int declares the returned value's type.
// return sends a value back to the caller and ends this function call.
// The call uses the parameter name as an argument label: number: 4.
func doubleNumber(number: Int) -> Int {
    return number * 2
}


let result = doubleNumber(number: 4)
print(result) // 8

// print displays a value; it does not return that value to the caller.
// Function parameters are constant bindings inside the function.
// A variable declared inside a function is local to that function's scope.

// Task 1: Calculate the remaining study minutes.
// Signature: func remainingMinutes(studied: Int, goal: Int) -> Int
// Return goal - studied when the goal has not been reached.
// Return 0 when the goal has been reached or exceeded.
// Return the result without printing inside the function.
// Use the supplied goal; do not hard-code 90.

func remainingMinutes(studied: Int , goal: Int) ->Int  {
    let remain: Int  = goal -  studied;
    if goal > studied {
        return remain;
    }else{
        return 0;
    }
    

}

let goal = 90 ;
var studied  = 30 ;
 print(remainingMinutes(studied: 45, goal: 90))  // 45
 print(remainingMinutes(studied: 90, goal: 90))  // 0
 print(remainingMinutes(studied: 115, goal: 90)) // 0
 print(remainingMinutes(studied: 20, goal: 60))  // 40
 print(remainingMinutes(studied: 0, goal: 90))   // 90

// After implementing Task 1, uncomment these calls:
// print(remainingMinutes(studied: 45, goal: 90))  // 45
// print(remainingMinutes(studied: 90, goal: 90))  // 0
// print(remainingMinutes(studied: 115, goal: 90)) // 0
// print(remainingMinutes(studied: 20, goal: 60))  // 40
// print(remainingMinutes(studied: 0, goal: 90))   // 90






// Task 2: Determine whether the goal has been reached.
// Signature: func isGoalReached(studied: Int, goal: Int) -> Bool
// Return true when studied >= goal; otherwise return false.
// Return the result without printing inside the function.


func isGoalReached ( studied: Int , goal: Int) -> Bool {
    
    if studied>=goal {
        return true;
    }
    return false;
}
 print(isGoalReached(studied: 45, goal: 90))  // false
 print(isGoalReached(studied: 90, goal: 90))  // true
 print(isGoalReached(studied: 115, goal: 90)) // true
 print(isGoalReached(studied: 20, goal: 60))  // false

// After implementing Task 2, uncomment these calls:
// print(isGoalReached(studied: 45, goal: 90))  // false
// print(isGoalReached(studied: 90, goal: 90))  // true
// print(isGoalReached(studied: 115, goal: 90)) // true
// print(isGoalReached(studied: 20, goal: 60))  // false

// Task 3: Print a report using your two functions.
// Signature: func printStudyReport(name: String, studied: Int, goal: Int)
// A function with no -> return type returns Void: no useful result value.
// Call remainingMinutes and isGoalReached inside this function.
// Store their results in local constants, then use them in the report.
// Keep the calculation rules in Tasks 1 and 2 rather than repeating them here.
// Print four lines: the name, studied minutes, remaining minutes, and status.
// Status must be "Complete" or "Keep studying".

func printStudyReport(name: String , studied: Int , goal: Int ) {
  let remain =    remainingMinutes(studied: studied, goal: goal);
    let isReached = isGoalReached(studied: studied, goal: goal);
    
    var status = "Keep studying";
    if isReached {
        status = "Complete";
    }
    print(name)
    print("Studied: \(studied) minutes")
    print("Remaining: \(remain) minutes")
    print("Status: \(status)")
}

printStudyReport(name: "Zoad", studied: 45, goal: 90);

// After implementing Task 3, uncomment this call:
// printStudyReport(name: "Ziad", studied: 45, goal: 90)
// Expected output for this report:
// Ziad
// Studied: 45 minutes
// Remaining: 45 minutes
// Status: Keep studying

// Also try studied: 90 and studied: 115 with goal: 90.
// Both should show 0 remaining minutes and Status: Complete.

// Review questions after completing the tasks:
// 1. What is the difference between returning a value and printing it?
// 2. What does -> Bool mean?
// 3. Can the caller access a constant declared inside printStudyReport by name?
