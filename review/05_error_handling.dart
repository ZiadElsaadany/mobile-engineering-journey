// Topic review: Dart error handling
// Exactly three questions. This topic has been introduced in Dart; Swift throwing functions are a later lesson.
// Choose your own inputs, types, declarations, and calls. Only suggested names are supplied.
// Write your solutions and your own main entry point in this file.
// Run after implementation from the repository root: dart review/05_error_handling.dart

// QUESTION 1: Validate one session
// Suggested name: validateSessionDuration
// A duration of zero or more is valid. A negative duration must throw ArgumentError.
// Valid input completes without throwing. Do not print inside the validation.
// Examples: 30 -> accepted; 0 -> accepted; -1 -> ArgumentError.
// Write Question 1 below.

// QUESTION 2: Validate and total multiple sessions
// Suggested name: validatedTotalMinutes
// Reuse your validator and return the sum of all valid session durations.
// An empty collection returns 0.
// If any duration is invalid, throw rather than returning a partial result.
// Examples: [10, 20] -> 30; [] -> 0; [0] -> 0;
// [10, -5, 20] -> ArgumentError; [-1, 10] -> ArgumentError.
// Write Question 2 below.

// QUESTION 3: Handle failure at the caller
// Suggested name: printValidatedTotal
// Reuse validatedTotalMinutes and handle an ArgumentError in the reporting code.
// For [10, 20], print: Total: 30 minutes
// For [], print: Total: 0 minutes
// For [10, -5, 20], print: Rejected: negative duration.
// After an invalid input, do not print a success message or a partial total.
// Write Question 3 below.
