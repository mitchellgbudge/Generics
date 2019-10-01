//: [Previous](@previous)

import Foundation

//: Queue - a first in, first out data structure (FIFO)
struct NumberQueue {
    private(set) var elements: [Int]
    
    mutating func push(_ element: Int) {
        elements.append(element)
    }
    
    mutating func pop() -> Int? {
        if elements.count > 0 {
            return elements.removeFirst()
        } else {
            return nil
        }
    }
}

var deliNumbers = NumberQueue(elements: [55, 56, 57])
deliNumbers.push(58)
deliNumbers.pop()
deliNumbers.elements

//: ## Convert to Generics

struct Queue<Element> {
    private (set) var elements: [Element]
    
    mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    mutating func pop() -> Element? {
        if elements.count > 0 {
            return elements.removeFirst()
        } else {
            return nil
        }
    }
    
    func peek() -> Element? {
        return elements.first
    }
}

var checkoutLine = Queue(elements: ["John", "Liz"])
checkoutLine.elements

checkoutLine.push("Dan")
checkoutLine.elements
checkoutLine.peek()
checkoutLine.elements

checkoutLine.pop()
checkoutLine.elements

checkoutLine.pop()
checkoutLine.pop()

checkoutLine.elements

checkoutLine.peek()

checkoutLine.pop()

//: [Next](@next)
