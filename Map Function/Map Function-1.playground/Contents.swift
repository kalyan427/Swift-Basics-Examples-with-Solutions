import UIKit

let numbers = [1,2,3,4,5]

// Use map() to double each element
let doubleNumbers = numbers.map { $0 * 2 }
print(doubleNumbers)

// Use map() to convert strings to uppercase
let names = ["john", "jane", "bob"]
let uppercasedNames = names.map { $0.uppercased() }
print(uppercasedNames)
