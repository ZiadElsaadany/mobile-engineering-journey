# Dart and Swift Revision Roadmap

A shared revision reference for Dart and Swift. Each concept includes a short explanation, matching examples in both languages, and the relevant differences.

After each completed lesson, extend this reference with the concepts and examples covered. Keep explanations and code comments in English. Use the same scenario in both languages where possible.

## Revision roadmap

| Order | Topic | Reference |
|---|---|---|
| 1 | Variables, constants, types, arithmetic, conditions, and strings | [Fundamentals](#fundamentals) |
| 2 | Creating, throwing, and handling errors | [Error handling](#error-handling) |
| 3 | Functions, parameters, return values, and scope | Future notes |
| 4 | Lists and arrays, maps and dictionaries, sets, and loops | Future notes |
| 5 | Null safety and optionals | Future notes |
| 6 | Classes, structs, composition, interfaces, and protocols | Future notes |
| 7 | Data structures, algorithms, and complexity | [Complexity basics](#complexity-basics); further topics to follow |
| 8 | Futures, async/await, concurrency, and memory | Future notes |
| 9 | Networking, persistence, testing, and application architecture | Future notes |

Future topics receive detailed notes and paired examples as they are covered.

## Fundamentals

### 1. Variables and constants

Use a constant binding when a variable will not be reassigned. Use a mutable variable when its value will change.

**Dart**

~~~dart
void main() {
  final topic = 'Swift';
  var studiedMinutes = 30;

  studiedMinutes += 15;

  print(topic);
  print(studiedMinutes);
}
~~~

**Swift**

~~~swift
let topic = "Swift"
var studiedMinutes = 30

studiedMinutes += 15

print(topic)
print(studiedMinutes)
~~~

**Output in both languages**

~~~text
Swift
45
~~~

| Concept | Dart | Swift |
|---|---|---|
| Binding that cannot be reassigned | `final` | `let` |
| Variable that can be reassigned | `var` | `var` |
| Compile-time constant declaration | `const` | No direct Dart-style `const` declaration; `let` prevents reassignment |

Swift does not provide a direct equivalent of Dart's `const` variable declaration. For a fixed value such as a study goal, use `const studyGoal = 90` in Dart and `let studyGoal = 90` in Swift. The Swift declaration prevents reassignment but does not require compile-time evaluation.

Dart `const` requires a compile-time constant value:

~~~dart
void main() {
  const studyGoal = 90;
  final startedAt = DateTime.now();

  print(studyGoal);
  print(startedAt);
}
~~~

The corresponding Swift constant bindings can hold either a literal or a value obtained at runtime:

~~~swift
import Foundation

let studyGoal = 90
let startedAt = Date()

print(studyGoal)
print(startedAt)
~~~

`DateTime.now()` and `Date()` obtain values at runtime. Use Dart `final` or Swift `let` to keep that result without allowing reassignment. Dart `const` cannot be initialized with `DateTime.now()`.

Dart `final` and Swift `let` prevent reassignment of the binding. They do not guarantee that every object referenced by the binding is internally immutable.

References: [Dart variables](https://dart.dev/language/variables), [Swift basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html).

#### Compile-time guarantees and compiler optimization

Swift can evaluate constant expressions during compilation. The absence of a direct Dart-style `const` variable declaration does not mean all Swift values must be calculated at runtime.

**Dart**

~~~dart
void main() {
  const totalMinutes = 3 * 60;
  print(totalMinutes);
}
~~~

**Swift**

~~~swift
let totalMinutes = 3 * 60
print(totalMinutes)
~~~

Both print `180`. Dart `const` requires a valid compile-time constant expression. Swift `let` requires a binding that cannot be reassigned; the compiler can fold arithmetic such as `3 * 60` into `180` as an optimization, but `let` alone does not require compile-time evaluation of every initializer.

Keep these ideas separate:

- **Binding immutability:** Whether the variable can be reassigned.
- **Compile-time evaluation:** Whether a value is determined while compiling.
- **Constant folding:** A compiler optimization that replaces a constant expression with its result.

Reference: [Swift compiler](https://www.swift.org/documentation/swift-compiler/).

#### Advanced context: guaranteed static initialization

For a requirement that explicitly needs a compile-time value, distinguish an ordinary immutable binding from a construct that requires a constant initializer.

**Dart**

~~~dart
void main() {
  const studyGoal = 90;
  print(studyGoal);
}
~~~

**Swift 6.3 or later, Mach-O platforms such as macOS**

~~~swift
@section("__DATA,constants")
let studyGoal: Int = 90

print(studyGoal)
~~~

Both print `90`, but the declarations serve different purposes. Dart `const` is a general language facility for constant values. Swift `@section` controls placement of a global or static variable in the binary and requires a constant initializer with static initialization. A runtime initializer such as `Int.random(in: 0..<100)` is rejected in this context.

This is a specialized systems-programming feature, not the usual declaration for application constants. Section names depend on the target binary format. For ordinary application constants, use `let`; for a strict compile-time requirement, identify the required context and toolchain support.

Reference: [SE-0492 Section Placement Control](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0492-section-control.md).

### 2. Basic types and type inference

Both languages can infer a type from the initial value. Types can also be written explicitly.

**Dart**

~~~dart
void main() {
  final String name = 'Ziad';
  int minutes = 30;
  final double completionRatio = 0.5;
  final bool isComplete = false;

  print(name);
  print(minutes);
  print(completionRatio);
  print(isComplete);
}
~~~

**Swift**

~~~swift
let name: String = "Ziad"
var minutes: Int = 30
let completionRatio: Double = 0.5
let isComplete: Bool = false

print(name)
print(minutes)
print(completionRatio)
print(isComplete)
~~~

| Value | Dart type | Swift type |
|---|---|---|
| Text | `String` | `String` |
| Integer | `int` | `Int` |
| Floating-point number | `double` | `Double` |
| Boolean | `bool` | `Bool` |

Dart places the type before the name. Swift places it after the name and a colon.

### 3. Arithmetic and updating a variable

`+=` adds a value and assigns the result back to the variable.

**Dart**

~~~dart
void main() {
  var studiedMinutes = 30;
  studiedMinutes += 15;

  final remainingMinutes = 90 - studiedMinutes;

  print(studiedMinutes);
  print(remainingMinutes);
}
~~~

**Swift**

~~~swift
var studiedMinutes = 30
studiedMinutes += 15

let remainingMinutes = 90 - studiedMinutes

print(studiedMinutes)
print(remainingMinutes)
~~~

**Output in both languages**

~~~text
45
45
~~~

A discount is calculated from the subtotal:

**Dart**

~~~dart
void main() {
  final subtotal = 120 * 2 + 80 * 1 + 200 * 1;
  final discount = subtotal * 0.10;
  final total = subtotal - discount;

  print(total);
}
~~~

**Swift**

~~~swift
let subtotal = 120 * 2 + 80 * 1 + 200 * 1
let discount = Double(subtotal) * 0.10
let total = Double(subtotal) - discount

print(total)
~~~

The subtotal is `520`, the discount is `52`, and the final total is `468`. Swift requires an explicit conversion here when combining the `Int` subtotal with `Double` arithmetic. Monetary values in these examples are simplified for practice.

### 4. Conditions

An `if/else` statement chooses a branch based on a Boolean condition.

**Dart**

~~~dart
void main() {
  const studyGoal = 90;
  var studiedMinutes = 30;
  var remainingMinutes = 0;

  studiedMinutes += 15;

  if (studiedMinutes >= studyGoal) {
    remainingMinutes = 0;
    print('Goal reached');
  } else {
    remainingMinutes = studyGoal - studiedMinutes;
    print('Keep studying');
  }

  print('$studiedMinutes minutes studied');
  print('$remainingMinutes minutes remaining');
}
~~~

**Swift**

~~~swift
let studyGoal = 90
var studiedMinutes = 30
var remainingMinutes = 0

studiedMinutes += 15

if studiedMinutes >= studyGoal {
    remainingMinutes = 0
    print("Goal reached")
} else {
    remainingMinutes = studyGoal - studiedMinutes
    print("Keep studying")
}

print("\(studiedMinutes) minutes studied")
print("\(remainingMinutes) minutes remaining")
~~~

**Output in both languages**

~~~text
Keep studying
45 minutes studied
45 minutes remaining
~~~

Dart requires parentheses around the `if` condition. Swift does not require them.

| Starting minutes | After adding 15 | Remaining toward 90 | Goal reached |
|---|---:|---:|---|
| 30 | 45 | 45 | No |
| 75 | 90 | 0 | Yes |
| 100 | 115 | 0 | Yes |

For this study report, the increment is always 15. Remaining minutes are zero when the goal has been reached or exceeded.

A named constant such as `studyGoal` keeps the target in one place. Both examples use `var` for values that are reassigned. Assigning `0` again is still reassignment, even when the value was already `0`. Dart `final` and Swift `let` would reject that reassignment after initialization. Printing the remaining minutes after the conditional ensures that both branches display them.

### 5. String interpolation

Interpolation inserts values or expressions inside a string.

**Dart**

~~~dart
void main() {
  final name = 'Ziad';

  print('Hello $name');
  print('Minutes: ${30 + 15}');
}
~~~

**Swift**

~~~swift
let name = "Ziad"

print("Hello \(name)")
print("Minutes: \(30 + 15)")
~~~

**Output in both languages**

~~~text
Hello Ziad
Minutes: 45
~~~

| Use | Dart | Swift |
|---|---|---|
| Insert a variable | `$name` or `${name}` | `\(name)` |
| Insert an expression | `${30 + 15}` | `\(30 + 15)` |

Swift interpolation uses `\(expression)`. A question mark is not part of that syntax.

### 6. String concatenation

Concatenation joins strings using `+`.

**Dart**

~~~dart
void main() {
  final name = 'Ziad';
  final minutes = 45;

  print('Hello ' + name);
  print('Minutes: ' + minutes.toString());
}
~~~

**Swift**

~~~swift
let name = "Ziad"
let minutes = 45

print("Hello " + name)
print("Minutes: " + String(minutes))
~~~

**Output in both languages**

~~~text
Hello Ziad
Minutes: 45
~~~

Both languages support string concatenation. Convert a number to a string before using it with string `+`. Interpolation can insert the number directly.

Spaces inside string literals are part of the output. `"Hello "` includes a space after the word.

References for strings and types: [Dart built-in types](https://dart.dev/language/built-in-types), [Swift strings and characters](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html).

### 7. Operator spacing and statement syntax

Use balanced spaces around a binary operator.

**Dart**

~~~dart
void main() {
  final name = 'Ziad';
  print(name + ' has studied');
}
~~~

**Swift**

~~~swift
let name = "Ziad"
print(name + " has studied")
~~~

In Swift, whitespace helps determine whether an operator is prefix, postfix, or infix. For the `+` used to join these strings, place spaces on both sides. The operator is also parsed as infix with no spaces on either side.

Dart uses semicolons to end many statements, not every line. Swift normally separates statements with newlines and does not require a semicolon after each statement.

Dart console examples put executable statements inside `main()`. A Swift script can execute statements at the top level.

Reference: [Swift lexical structure](https://docs.swift.org/latest/documentation/the-swift-programming-language/lexicalstructure/).

### 8. Multiline strings

Use triple quotes to write a string spanning multiple lines.

**Dart**

~~~dart
void main() {
  print("""
Name: Ziad
Topic: Swift
""");
}
~~~

**Swift**

~~~swift
print("""
Name: Ziad
Topic: Swift
""")
~~~

**Output in both languages**

~~~text
Name: Ziad
Topic: Swift
~~~

Dart supports triple single or double quotes. Swift uses triple double quotes for multiline string literals.

## Error handling

Creating an error value and throwing it are separate actions. `throw` interrupts the current execution path and propagates the error until it is handled.

### Creating an error value

**Dart**

~~~dart
void main() {
  final error = ArgumentError('Invalid input');
  print(error);
}
~~~

**Swift**

~~~swift
enum ValidationError: Error {
    case invalidInput
}

let error = ValidationError.invalidInput
print(error)
~~~

Neither example throws the error. Each creates a value and prints it.

### Throwing and handling an error

The shared rule is to reject invalid input before using it. The examples accept a zero price and reject a negative price.

**Dart**

~~~dart
void validatePrice(int price) {
  if (price < 0) {
    throw ArgumentError('Price must be non-negative');
  }
}

void main() {
  try {
    validatePrice(-10);
    print('Price accepted');
  } catch (error) {
    print('Price rejected');
  }
}
~~~

**Swift counterpart**

~~~swift
enum ValidationError: Error {
    case negativePrice
}

func validatePrice(_ price: Int) throws {
    if price < 0 {
        throw ValidationError.negativePrice
    }
}

do {
    try validatePrice(-10)
    print("Price accepted")
} catch {
    print("Price rejected")
}
~~~

**Output in both languages**

~~~text
Price rejected
~~~

- The statement after the failing function call is skipped.
- The error handler runs.
- If a loop calls validation without catching the error inside the loop, a thrown error interrupts the loop.
- Swift throwing functions declare `throws`, and throwing calls use `try`.
- Dart does not require `throws` declarations or `try` before the individual function call.
- Swift error values conform to `Error`; Dart provides types such as `ArgumentError`.

The Swift example provides the language counterpart to the Dart validation concept. Functions, enums, and Swift error handling receive fuller notes when covered.

References: [Dart error handling](https://dart.dev/language/error-handling), [Swift Error](https://docs.swift.org/latest/documentation/swift/error/), [Swift statements](https://docs.swift.org/latest/documentation/the-swift-programming-language/statements/).

## Complexity basics

Big O describes how resource use grows as the input grows. For a basket, let `n` be the number of items, not the sum of their quantities.

### One pass through a basket

These examples assume valid items with both required keys. They illustrate the traversal and discount calculation.

**Dart**

~~~dart
void main() {
  final items = [
    {'price': 120, 'quantity': 2},
    {'price': 80, 'quantity': 1},
    {'price': 200, 'quantity': 1},
  ];
  double total = 0;

  for (final item in items) {
    total += item['price']! * item['quantity']!;
  }

  if (total >= 500) {
    total -= total * 0.1;
  }
  print(total);
}
~~~

**Swift**

~~~swift
let items = [
    ["price": 120, "quantity": 2],
    ["price": 80, "quantity": 1],
    ["price": 200, "quantity": 1],
]
var total = 0.0

for item in items {
    total += Double(item["price"]! * item["quantity"]!)
}

if total >= 500 {
    total -= total * 0.1
}
print(total)
~~~

**Output in both languages**

~~~text
468.0
~~~

- **Time: O(n).** Each item is visited once. Reading the fixed keys and performing validation or arithmetic takes constant work per item under the exercise's assumptions. The discount calculation after the loop takes O(1), so O(n) + O(1) simplifies to O(n).
- **Auxiliary space: O(1).** The calculation keeps a fixed number of variables and does not build a collection that grows with the basket. The existing input occupies O(n) space; auxiliary space counts the extra storage used to process it.
- **Early failure:** In the validating Dart exercise, an invalid first item causes an immediate throw, taking O(1) time for that case. The worst case remains O(n), including valid input and an invalid item at the end.

Swift explicitly converts the integer product to `Double` in this example. That conversion does not change the complexity. A loop's complexity depends on both its iteration count and the work inside it; a loop alone does not guarantee O(n).

## Running the exercise files

Prerequisites: The Dart SDK and Swift toolchain must be installed and available in your terminal.

After cloning or downloading this repository, open Terminal in the repository root (the folder containing this README). Save the exercise file and run the relevant command:

~~~bash
dart week01/day01_assessment.dart
~~~

~~~bash
swift week01/day01_swift.swift
~~~

Each Dart example above is a separate program. Each Swift example is a separate script. Run examples separately rather than combining declarations with the same names.

## Reference format for future lessons

For every concept added after a lesson, include:

1. A short explanation.
2. A Dart example.
3. A matching Swift example.
4. Expected behavior or output.
5. Key similarities and differences.
6. An official reference where useful.

Keep the roadmap and revision notes focused on the concepts themselves.
