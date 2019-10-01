//: [Previous](@previous)

import UIKit

//: Challenge
//: Write a `removeDuplicates(array:)` function
// Input
let array = [1, 2, 3, 4, 5, 6, 7, 8, 1, 6, 8, 3, 9, 5, 2]

func removeDuplicates(array: [Int]) -> [Int] {
    var result: [Int] = []
    
    for item in array {
        if !result.contains(item) {
            result.append(item)
        }
    }
    return result
}

removeDuplicates(array: array)


//: ## Alternative: Use a `Set` to create a unique list of items
func removeDuplicates<Element: Hashable>(array: [Element]) -> [Element] {
    let set = Set(array)
    return Array(set)
}

//: Make it work for Sequences
//: Use the where clause to add more requirements on the type

func removeDuplicates<S: Sequence>(_ sequence: S) -> [S.Element] where S.Element: Hashable {
    let result: Set<S.Element> = Set(sequence)
    return Array(result)
}

// S: Type alias for the type we are passing in
// Sequence: Type conforms to the Sequence Protocol (Array, Set, Dictionary, Enum)
// S.Element: Type of objects in the sequence (String, Int, Double, Bools)

extension Sequence where Element: Hashable {
    
    func removeDuplicates() -> [Element] {
        let result = Set(self)
        return Array(result)
    }
}

let uniqueNumbers = array.removeDuplicates()
print(uniqueNumbers.sorted())

let names = ["Bob", "John", "Bob", "Susan", "Steve", "Susan"]

let uniqueNames = removeDuplicates(names)
print(uniqueNames.sorted())

let uniqueNames2 = names.removeDuplicates()
print(uniqueNames2.sorted())

//: [Next](@next)

class MyViewController: UIViewController {
    // Blah blah blah
}

extension UIViewController {
    func presentAlert() {
        print("Alert")
    }
}

let vc = MyViewController()
vc.presentAlert()
