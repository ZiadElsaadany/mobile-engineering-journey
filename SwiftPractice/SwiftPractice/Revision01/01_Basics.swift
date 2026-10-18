// Topic review: Basics: bindings, types, arithmetic, conditions, and strings
// Exactly three questions. Solve each question independently in Swift and Dart.
// Only suggested names are supplied. Choose your own inputs, types, declarations, and calls.
// No function signatures, implementation templates, or ready-made test calls are provided.
// Use the examples to write your own checks, including the boundary cases.
// Explain your choices when submitting a solution.
// Write function definitions and your solutions in this file.
// Write executable calls in main.swift and run the SwiftPractice scheme on My Mac with Command-R.

// QUESTION 1: Trip budget
// Suggested name: printTripBudget
// Produce a console report for a customer buying several tickets.
// The data is: customer Ziad, ticket price 35.5, ticket count 3, budget 120.0.
// Show the customer, total ticket cost, and remaining budget.
// Expected report:
// Customer: Ziad
// Total: 106.5
// Remaining: 13.5
// With ticket count 0 and budget 50.0, total is 0.0 and remaining is 50.0.
// A negative remaining balance is allowed when the cost exceeds the budget.
// Choose suitable types and bindings; use interpolation in the report.
// Write Question 1 below.
func printTripBudget (name: String ,  ticketPrice: Double , ticketCount: Double  ,  budget: Double ){
    let total = ticketPrice * ticketCount
    let reamining = budget - total
    print("Customer: \(name) \nTotal: \(total) \nRemaining: \(reamining)")
}
// QUESTION 2: Study progress
// Suggested name: printStudyProgressReview
// Given a topic, starting study minutes, and a goal, add 15 study minutes.
// Report the topic, final minutes, remaining minutes, and whether the goal was reached.
// Remaining minutes must not be negative. The goal is supplied, not fixed in the implementation.
// Examples, using the topic Swift and goal 90:
// Start 30 -> final 45, remaining 45, reached false.
// Start 75 -> final 90, remaining 0, reached true.
// Start 100 -> final 115, remaining 0, reached true.
// With start 20 and goal 60 -> final 35, remaining 25, reached false.
// Write Question 2 below.


func printStudyProgressReview(topic: String, startingStudyMinutes: Double, goal: Double ) ->Void  {
    var final = startingStudyMinutes + 15
    var remaining = goal - final
    let reached = final >= goal
    if remaining<0 {
        remaining = 0
    }
    print("Topic \(topic) \nFinal: \(final) \nRemaining: \(remaining) \nReached: \(reached)")
}



// QUESTION 3: Ticket pricing
// Suggested name: ticketPrice
// Determine the final ticket price from a supplied age and base price.
// Under age 12: apply a 50% discount.
// Ages 12 through 59: charge the full base price.
// Age 60 or above: apply a 30% discount.
// With base price 100.0: age 11 -> 50.0; age 12 -> 100.0;
// age 59 -> 100.0; age 60 -> 70.0.
// With age 60 and base price 200.0 -> 140.0.
// Assume age and base price are non-negative.
// Write Question 3 below.

func ticketPrice  ( basePrice: Double , age:Int ){
    
    var discount: Double  = 0 ;
    var priceAfterDiscount: Double  = 0 ;
    if age < 12 {
        discount = 0.5 * basePrice;
        priceAfterDiscount = basePrice - discount;
        
    }else if age>=12 && age<60 {
        discount = 0 ;
        priceAfterDiscount = basePrice;
    }else if age >= 60 {
        discount = (30/100) * basePrice ;
        priceAfterDiscount = basePrice - discount
    }
    print("with age \(age) and base price \(basePrice)  ---> \(priceAfterDiscount)"  )
    
}
