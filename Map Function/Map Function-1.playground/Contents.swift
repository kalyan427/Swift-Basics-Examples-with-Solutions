import UIKit

// Use map() to double each element
let numbers = [1,2,3,4,5]
let doubleNumbers = numbers.map { $0 * 2 }
print(doubleNumbers)

// Use map() to convert strings to uppercase
let names = ["john", "jane", "bob"]
let uppercasedNames = names.map { $0.uppercased() }
print(uppercasedNames)

/*
 FlatMap: flatMap is used to flatten a collection of collections. It can be useful when you have nested arrays or optional values. It applies a transformation, then flattens the resulting collections into a single array.
 */

// Example with nested arrays
let nestedArrays = [[1,2,3], [4,5], [6]]
let flattenedArray = nestedArrays.flatMap { $0 }
print(flattenedArray)

// Example with optionals
let optionalValue: [Int?] = [1,2,nil,3]
let flattenedOptionals = optionalValue.flatMap { $0 }
print(flattenedOptionals)


