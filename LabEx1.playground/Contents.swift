import UIKit

// Variable and constant declarations
let constantValue = 10
var variableValue = 20

// Returns the sum of two integers
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// Returns the sum of two doubles
func sum(a: Double, b: Double) -> Double {
    return a + b
}

// Prints a greeting with the provided name
func greeting(name: String) {
    if !name.isEmpty {
        print("Hi, \(name)!")
    } else {
        print("Hi, John Doe!")
    }
}

// Checks if x is the first or last element in the array
func firstOrLast(x: Int, arr: [Int]) -> Bool {
    guard !arr.isEmpty else { return false }
    return arr[0] == x || arr[arr.count - 1] == x
}

// Finds the index of x in the array, returns nil if not found
func find(x: Int, arr: [Int]) -> Int? {
    for i in 0..<arr.count {
        if arr[i] == x {
            return i
        }
    }
    return nil
}

// Returns true if the bird is touching a power-up or a seed
func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    return touchingPowerUp || touchingSeed
}

// Calculates the area of a rectangle
func area(width w: Int, height h: Int) -> Int {
    return w * h
}

// Performs addition, subtraction, or multiplication based on the operator
func calculator(a: Int, b: Int, op: String) -> Int? {
    switch op {
    case "+": return a + b
    case "-": return a - b
    case "*": return a * b
    default: return nil
    }
}

// Testing the functions
print(sum(a: 5, b: 10)) // Output: 15

greeting(name: "Alice") // Output: Hi, Alice!
greeting(name: "")      // Output: Hi, John Doe!

print(firstOrLast(x: 1, arr: [1, 2, 3, 4])) // Output: true
print(firstOrLast(x: 5, arr: [1, 2, 3, 4])) // Output: false

let numbers = [2, 3, 4]
if let index = find(x: 3, arr: numbers) {
    print("Found at index: \(index)") // Output: Found at index: 1
} else {
    print("Not Found!")
}

print(score(touchingPowerUp: true, touchingSeed: false)) // Output: true
print(score(touchingPowerUp: false, touchingSeed: false)) // Output: false

print(calculator(a: 10, b: 5, op: "+") ?? "NaN") // Output: 15
print(calculator(a: 10, b: 5, op: "-") ?? "NaN") // Output: 5
print(calculator(a: 10, b: 5, op: "*") ?? "NaN") // Output: 50
print(calculator(a: 10, b: 5, op: "/") ?? "NaN") // Output: NaN
