// Topic review: Functions: inputs, returned values, composition, and local scope
// Exactly three questions. Solve each question independently in Swift and Dart.
// Only suggested names are supplied. Choose your own inputs, types, declarations, and calls.
// No function signatures, implementation templates, or ready-made test calls are provided.
// Use the examples to write your own checks, including the boundary cases.
// Explain your choices when submitting a solution.
// Write function definitions and your solutions in this file.
// Write executable calls in main.swift and run the SwiftPractice scheme on My Mac with Command-R.

// QUESTION 1: Remaining budget
// Suggested name: remainingBudget
// Calculate and return the remaining budget after a supplied cost.
// The result must never be negative. Do not print inside this calculation.
// Examples:
// Budget 100.0, cost 40.0 -> 60.0.
// Budget 100.0, cost 100.0 -> 0.0.
// Budget 100.0, cost 130.0 -> 0.0.
// Budget 0.0, cost 0.0 -> 0.0.
// Assume budgets and costs are non-negative.
// Write Question 1 below.

/// return remainingBUDGET
func remainingBudget( budget: Double, cost: Double )->Double {
    
    return (budget - cost) >= 0 ?  budget - cost : 0
}

// QUESTION 2: Affordability
// Suggested name: canAfford
// Determine and return whether a supplied budget covers a supplied cost.
// An exact match is affordable. Do not print inside this calculation.
// Examples:
// Budget 100.0, cost 40.0 -> true.
// Budget 100.0, cost 100.0 -> true.
// Budget 100.0, cost 130.0 -> false.
// Budget 0.0, cost 0.0 -> true.
// Write Question 2 below.

func canAfford( budget: Double , cost: Double )-> Bool {
    
    return budget >= cost
}

// QUESTION 3: Compose a budget report
// Suggested name: printBudgetReport
// Use your first two functions to print a report for a supplied customer, budget, and cost.
// Store both returned results in local bindings that prevent reassignment.
// Reuse the functions rather than repeating their calculations.
// Expected output for customer Ziad, budget 100.0, cost 40.0:
// Customer: Ziad
// Budget: 100.0
// Cost: 40.0
// Remaining: 60.0
// Status: Within budget
// For cost 130.0, remaining is 0.0 and status is Over budget.
// For cost 100.0, remaining is 0.0 and status is Within budget.
// Write Question 3 below.

func printBudgetReport(
     customer: String,
    budget: Double,
    cost: Double
)   {
    
    let remaining = remainingBudget(budget: budget, cost: cost)
    let afford = canAfford(budget: budget, cost: cost)
    
    print("Customer: \(customer)")
    print("Budget: \(budget)")
    print("Cost: \(cost)")
    print("Remaining: \(remaining)")
    print("Status: \(afford ? "Within budget" : "Over budget")")
}
