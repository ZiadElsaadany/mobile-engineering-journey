// Day 1: Dart assessment — spend at most 60 minutes.
// Write your own attempt. If you get stuck, describe where instead of requesting a full solution.
// You may check syntax documentation; record any help you use.
//
// Task: Calculate the total cost of a shopping basket.
// Each item contains price (unit price in EGP) and quantity (number of units).
// Sum price * quantity for all items.
// If the subtotal is >= 500, apply a 10% discount once.
// An empty basket has a total of 0.
// Reject negative prices or quantities below 1 by throwing ArgumentError.
// For this exercise, assume the required keys exist and their types are correct.
//
// Examples to check after implementation:
// [] => 0.0
// [{price: 120, quantity: 2}, {price: 80, quantity: 1}] => 320.0
// [{price: 120, quantity: 2}, {price: 80, quantity: 1},
//  {price: 200, quantity: 1}] => 468.0
// [{price: 500, quantity: 1}] => 450.0
// [{price: -10, quantity: 1}] => ArgumentError
// [{price: 10, quantity: 0}] => ArgumentError
//
// After your attempt: Explain the steps and where you placed validation and why.
// If you know Big O, state the time complexity. Otherwise, write "I have not learned it yet".
// Prices are simplified for practice; we will discuss precise money representation later.

double calculateTotal(List<Map<String, int>> items) { 
  // Each item has a price and a quantity.
  // Sum price * quantity across all items.
  // Apply a 10% discount if the subtotal is >= 500.
  // Start the basket total at 0.
  // Throw ArgumentError for negative prices or quantities below 1.
  
  double  bag = 0 ;
  double priceAfterDiscount = 0; 
  
  for(var  item in items ) {  
    var   price = item["price"]!;
      var quantity= item["quantity"]!;
      if(price<0  || quantity <1 ) {
       throw ArgumentError("Price must be non-negative and quٍantity must be at least 1.");
      }
  bag = bag + (price * quantity);   
   
  }
  if(bag>=500) { 
    priceAfterDiscount = bag - (bag*0.1); 
    return priceAfterDiscount; 
  } 
  return bag; 

 }

void main() {
  
 var result =  calculateTotal([{"price": 120, "quantity": 2}, {"price": 80, "quantity": 1}, {"price": 200, "quantity": 1}]);
print(result.toString()); 

  }
