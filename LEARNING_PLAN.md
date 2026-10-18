# Mobile Engineering Learning Plan

## Objective and working assumptions

Build the ability to design, implement, test, debug, and deliver mobile features independently. Use Swift and native iOS to learn the concepts first, then transfer shared concepts to Dart and Flutter. Keep Flutter relevant to current professional work.

Budget: 3 hours per study day, 5 days per week, approximately 15 hours per week.

The initial planning estimate is 24 weeks, approximately 360 study hours. This is a flexible estimate for the outcomes below, not a promise of mastery or a job level. Review the estimate at each phase checkpoint. Extend or shorten a phase based on demonstrated understanding and implementation.

## How each lesson works

1. State the phase, lesson, prerequisites, and learning outcome.
2. Explain one connected set of concepts with a small example.
3. Assign exactly three practice questions per topic, with clear requirements, plain-data input/output examples, and edge cases. Use matching questions in Swift and Dart for shared topics.
4. The learner chooses function inputs, types, declarations, and calls. Exercise prompts may suggest a function name only: do not provide signatures, parameter lists, return-type annotations, implementation templates, worked solutions, or ready-made calls. Give additional hints only when requested.
5. Review the submitted code and run checks against the requirements.
6. Ask a short understanding question or request a small independent variation.
7. Add the covered concepts and paired Dart/Swift examples to README.md after completion.
8. Name the next lesson and explain how it builds on this one.

Passing sample outputs is one part of completion. The learner must also explain the implementation and make a small change without copying a solution.

Questions may interrupt a lesson. Answer them, identify advanced material as a preview, and return to the scheduled lesson. A preview does not count as a completed topic.

## Daily and weekly rhythm

| Daily activity | Minutes | Outcome |
|---|---:|---|
| Recall and review | 20 | Explain or reconstruct a previous concept without looking at the answer |
| Focused concept lesson | 45 | Understand a small example and predict its behavior |
| Independent implementation and debugging | 85 | Write and verify an exercise or project feature |
| Engineering practice | 30 | Practice problem solving, complexity, Git, or a test related to the current phase |

These blocks may be combined when a project needs uninterrupted implementation. Chat time is only part of the study day.

Each week uses three sessions for lessons and exercises, one for integrating features, and one for review, an independent variation, and documentation. Adapt this balance when review reveals a gap. Do not add new topics merely to keep to the calendar.

## Phase roadmap

| Phase | Planning window | Main topics | Deliverable and exit checkpoint |
|---|---|---|---|
| 1. Language and programming foundations | Weeks 1-4 | Swift fundamentals, functions, collections, optionals, OOP, value/reference semantics, protocols, closures, errors, basic complexity, Git basics | A console Study Tracker with multiple sessions, validation, summaries, and meaningful checks; explain and modify it independently |
| 2. Native iOS application foundations | Weeks 5-8 | Xcode project structure, SwiftUI layout/state/navigation, app and scene lifecycle, UIKit views/controllers and their lifecycle, debugging, accessibility basics | A usable Study Tracker app; trace how user actions change state and UI; explain the relevant lifecycle behavior |
| 3. Data, concurrency, and memory | Weeks 9-13 | HTTP/REST, JSON/Codable, URLSession, async/await, cancellation, main-actor UI updates, ARC and retain cycles, database fundamentals, local persistence, caching, dependency management | Add persisted sessions and a network-backed feature with loading, empty, failure, and success states; diagnose a memory or concurrency problem |
| 4. Design, architecture, and testing | Weeks 14-17 | Responsibilities and boundaries, SOLID in context, composition, dependency injection, MVVM, selected design patterns, unit tests, test doubles, integration checks, refactoring | Refactor the app around clear responsibilities; replace a dependency in tests; justify design choices and verify behavior |
| 5. Engineering workflow and delivery | Weeks 18-20 | Requirements, SDLC, basic Agile practices, Git branches/PRs/conflicts, schemes/configurations/environments, CI/CD, signing, TestFlight and App Store release workflow | Deliver a feature from a written requirement through implementation, review, automated checks, and a release preparation checklist |
| 6. Transfer to Flutter | Weeks 21-24 | Dart equivalents, Flutter state and lifecycle, async behavior, architecture/DI, persistence/networking, tests, performance profiling, delivery | Rebuild a representative vertical feature in Flutter with matching behavior and tests; explain platform differences and tradeoffs |

SwiftUI is the main UI implementation path. UIKit receives focused practical exercises, including view-controller lifecycle and interoperability. Equal depth in both UI frameworks is not assumed within this initial estimate.

Software engineering is practiced throughout all phases. It is not postponed until after learning iOS. For example: explain complexity during collections, design data models during persistence, write tests when behavior needs protection, and use Git while building features.

An actual TestFlight upload or App Store submission depends on the learner's developer-account access. Prepare and verify the available release steps before claiming that a release is complete.

## Phase 1 lesson sequence

The sequence below is the immediate execution plan. Lessons are ordered by prerequisites; they are not guaranteed to take exactly one day each.

| Lesson | Topic | Practice outcome | Current position |
|---|---|---|---|
| 1 | Variables, constants, types, arithmetic, conditions, strings | Print a single-session report and check below/equal/above-goal cases | Basic exercise completed |
| 2 | Functions, parameters, argument labels, return values, Void, local scope | Calculate remaining minutes, determine goal completion, and compose a report | Three exercises reviewed; basic scope explanation checked |
| 3 | Arrays and loops | Summarize several session durations using a loop; handle an empty array and explain time/space cost | All three paired topic-review questions passed; complexity reasoning discussed and recorded |
| 4 | Optionals and safe access | Handle missing values using optional binding and a fallback; avoid unconditional force unwraps | Planned |
| 5 | Dictionaries and sets | Group sessions by topic, count sessions, and identify unique topics | Planned |
| 6 | Enums and switch | Represent a fixed set of session states and handle cases explicitly | Planned |
| 7 | Structs, properties, initializers, and methods | Model a study session instead of passing unrelated primitive values | Planned |
| 8 | Classes, OOP, and value/reference behavior | Compare copying a struct with sharing a class instance; apply encapsulation | Planned |
| 9 | Protocols and composition | Define a small contract and use two implementations through that contract | Planned |
| 10 | Closures and higher-order collection operations | Express an understood loop using map/filter/reduce and explain the result and cost | Planned |
| 11 | Swift errors and basic automated checks | Reject invalid session data with throws/try/do-catch and verify boundary cases | Planned |
| 12 | Foundation project and independent review | Integrate a console Study Tracker and implement a new requirement independently | Planned |

Git basics run alongside these lessons: status, diff, add, commit, log, and ignoring generated files. Broader branch workflows and CI/CD receive deeper treatment later.

Complexity starts with constant work, linear traversal, auxiliary space, and recognizing repeated work. Introduce stacks, queues, searching, sorting, and simple recursion gradually in the engineering-practice block. Select problems that exercise the current concept rather than prioritizing difficulty or problem count.

## Current checkpoint and next lesson

Reviewed artifacts:

- week01/day01_assessment.dart: basket total, validation, discount, and O(n) time/O(1) auxiliary-space analysis.
- week01/day01_swift.swift: a single-session report with a named goal and boundary cases.
- week01/day02_functions.swift: three functions with calculations separated from report output.

The current position is Phase 1, Lesson 3: Arrays and loops. The basic Functions exercises have been reviewed. Advanced function features and Swift error handling are not completed merely because an example appears in the revision reference.

The initial Lesson 3 practice remains in SwiftPractice/SwiftPractice/array-loops.swift, with calls in main.swift; week01/day03_arrays_loops.swift is the earlier standalone copy. The paired topic-review exercises are in SwiftPractice/SwiftPractice/Revision01/03_ArraysLoops.swift and review/03_arrays_loops.dart. All three topic-review questions have passed in both languages.

Current exercise: topic-based review within Phase 1. Basics, Functions, Arrays and Loops, and Complexity each have three questions, matched between Swift and Dart. Swift topic files are in SwiftPractice/SwiftPractice/Revision01/; Dart topic files are in review/. Dart error handling has its own file with three questions because validation and throwing have already been introduced there; Swift error handling remains a later lesson.

Each topic has one file per language and exactly three numbered questions. Prompts include requirements and plain-data examples, with at most a suggested function name. The learner writes their own signatures, implementations, and calls. Swift executable calls belong in main.swift; each Dart programming topic gets its own learner-written main entry point. Complexity questions are answered in comments. Start with Basics Question 1 in both languages, review it, then proceed in topic order.

This lesson extends the existing single-session report to multiple sessions, with specified cases for an empty collection, multiple durations, and sessions that meet or exceed a goal. No UIKit, networking, or architecture prerequisites are needed. After this lesson's implementation and review, the next topic is Optionals and safe access.

Current review checkpoint: All three Basics questions in Dart have passed review. Question 1 covers the original example, zero-ticket input with a different customer, and an over-budget case. Question 2 covers below/equal/above-goal cases, a different goal, and a different topic name. Question 3 covers ages 11, 12, 59, and 60, plus a different base price. All three Basics questions in Swift have also passed the equivalent checks. The paired Basics review is complete. The Functions topic review is complete in both Swift and Dart. Questions 1 and 2 passed all four specified cases in both languages. Question 3 reuses the two helper functions with local immutable bindings and has been checked for under-budget, exact-budget, over-budget, and zero-budget cases with a different customer. The Arrays and Loops topic review is complete: all three questions have passed all five specified cases in both Swift and Dart. Question 3 also preserves the input, original order, and repetitions, and produces a separate result. All three Complexity questions have been discussed, with English answers recorded in both language files. Constant access, accumulation, and sequential traversals were answered correctly; result-space analysis was completed with guided examples. Revisit the distinction between input size n, result size k, and working space during later practice. Next is the Dart error-handling review, which remains unreviewed; Optionals is the next new language topic.

Lesson 3 also checks transfer of the basic function concepts: the learner writes new functions taking arrays, returns calculated results, and composes a summary with local bindings.

## Project progression and Flutter transfer

Use the Study Tracker as a continuing project so each phase solves a concrete new problem:

1. Calculate and summarize sessions in the console.
2. Enter and display sessions in an iOS UI.
3. Save sessions and load an external data source with realistic failure handling.
4. Make behavior testable and responsibilities clear.
5. Deliver a feature through a repeatable development and release workflow.
6. Reimplement a selected feature in Flutter and compare the approaches.

After each shared concept, add a concise Dart comparison to the revision reference. After each major iOS milestone, perform a small Dart/Flutter transfer exercise. Phase 6 brings those concepts together in a larger Flutter implementation.

Do not claim that platform-specific behavior transfers directly. For example, Swift ARC and Dart garbage collection, or UIKit and Flutter lifecycles, require separate explanations and practical comparisons.

## Evidence of progress

At a weekly or phase checkpoint, assess whether the learner can:

- Explain the relevant code, inputs, outputs, assumptions, and tradeoffs.
- Implement a small unfamiliar variation without generated solution code.
- Use error messages and debugging tools to locate and fix a defect.
- Select meaningful normal, boundary, and failure cases.
- Describe the relevant time and space costs.
- Keep a coherent Git history and explain a change to a reviewer.

Meeting these checkpoints demonstrates specific skills. Mid-level readiness requires broader evidence from real features, maintenance, debugging, collaboration, and independent decisions; completing a timetable alone does not establish it.

## Learning and reference files

- LEARNING_PLAN.md: phase sequence, study structure, checkpoints, and current position.
- README.md: English revision reference with explanations and matching Dart/Swift examples; no personal mistake history or daily progress log.
- week01/: earlier learner-written exercises and their instructions.
- SwiftPractice/SwiftPractice/: Xcode practice; keep each topic in its own Swift file with three questions, and write executable calls in main.swift.
- review/: one Dart file per topic, with three questions and a learner-written entry point for programming exercises.

## Primary references

Use the relevant chapter for the current lesson rather than reading every reference from beginning to end.

- [The Swift Programming Language](https://docs.swift.org/latest/documentation/the-swift-programming-language/)
- [Develop in Swift](https://developer.apple.com/tutorials/develop-in-swift)
- [Dart language introduction](https://dart.dev/language)
- [Flutter application architecture](https://docs.flutter.dev/app-architecture)
