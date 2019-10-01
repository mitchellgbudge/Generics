//: [Previous](@previous)

import Foundation

//: 2^0 = 1
//: 2^1 = 2
//: 2^2 = 2 * 2 = 4

func power(_ value: Int, _ exponent:  Int) -> Int {
    var result: Int = 1
    
    for _ in 0..<exponent {
        result *= value
    }
    return result
}

let result = power(2, 8)

func power<Number: Numeric>(_ value: Number, _ exponent: Int) -> Number {
    var result: Number = 1
    
    for _ in 0..<exponent {
        result *= value
    }
    
    return result
    
}

let value = power(3.5, 3)

extension Numeric {
    // return the result without modifying self
    func raisedTo(_ exponent: Int) -> Self {
        var result: Self = 1
        
        for _ in 0..<exponent {
            result *= self
        }
        return result
    }
    
    // modify self
    mutating func raiseTo(_ exponent: Int) {
        var result: Self = 1
        
        for _ in 0..<exponent {
            result *= self
        }
        self = result
    }
}

let number = 10
number.raisedTo(2)

infix operator **

func ** <Number: Numeric>(value: Number, exponent: Int) -> Number {
    var result: Number = 1
    for _ in 0..<exponent {
        result *= value
    }
    return result
}

4 ** 2
//: [Next](@next)
