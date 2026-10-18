// Topic review: Big O: time and auxiliary space
// Exactly three questions. Solve each question independently in Swift and Dart.
// Only suggested names are supplied. Choose your own inputs, types, declarations, and calls.
// No function signatures, implementation templates, or ready-made test calls are provided.
// Use the examples to write your own checks, including the boundary cases.
// Explain your choices when submitting a solution.
// Answer these reasoning questions in English comments in this file.

// QUESTION 1: One traversal
// Analyze your totalMinutes implementation from the Arrays and Loops topic.
// Let n be the number of input sessions.
// State its worst-case time complexity and auxiliary space, and explain your reasoning.
// Distinguish the storage for the existing input from additional working storage.
// Write your answer in English comments below.

// ==================== ANSWER 1 ====================
// Time: O(n), because the loop visits every element in lst once.
// Auxiliary space: O(1), because sum and the loop variable use a fixed
// amount of working storage. Updating sum does not create more variables.
// The existing input array is excluded from auxiliary space.
// ================== END ANSWER 1 ==================

// QUESTION 2: Two sequential traversals
// Suppose a report calls totalMinutes once and then countLongSessions once.
// Both receive the same collection of n sessions.
// The report otherwise stores only their two results and prints them.
// State the total time complexity and auxiliary space.
// Explain how calling two traversals sequentially affects your calculation.
// Write your answer in English comments below.

// ==================== ANSWER 2 ====================
// Time: O(n). Each function traverses n sessions once, so the total work
// is n + n = 2n. Big O ignores the constant factor of 2.
// The traversals run sequentially, so their work is added, not multiplied.
// Auxiliary space: O(1). Each function uses fixed working storage, and
// the report stores only two scalar results. No growing collection is created.
// ================== END ANSWER 2 ==================

// QUESTION 3: Building a result collection
// Analyze your sessionsBelowGoal implementation.
// Let n be the number of input sessions and k the number selected.
// State its worst-case time complexity.
// Explain the size of the returned collection in terms of k, then give the worst case in terms of n.
// State auxiliary working space separately if you exclude the returned collection.
// Explain whether the result can have the same length as the input.
// Write your answer in English comments below.

// ==================== ANSWER 3 ====================
// Time: O(n). Every input session is checked once. Appending k selected
// elements takes O(k) total amortized time; k <= n, so the total is O(n).
// Result storage: O(k), where k is the number of selected sessions.
// If every session is below the goal, k = n, so worst-case result space is O(n).
// Equality does not qualify: only durations strictly below the goal are selected.
// Auxiliary working space excluding the returned array: O(1).
// The remaining loop state uses fixed storage regardless of n or k.
// Including the returned array, worst-case extra space is O(n).
// The result needs var because append changes the Swift array's value.
// ================== END ANSWER 3 ==================
