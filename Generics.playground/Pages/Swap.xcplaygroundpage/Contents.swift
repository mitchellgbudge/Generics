//: [Previous](@previous)

import UIKit

//: ## Challenge 1 (5 min)
//: Make a function called `swap()` that can swap two `Int` parameters and print out new values

var x = 5
var y = 10

func swap(_ lhs: inout Int, _ rhs: inout Int) {
    let tempValue = lhs
    lhs = rhs
    rhs = tempValue
}

swap(&x, &y)
x
y

//: Make the function generic so that it can work on `String`, `Int`, or `Double`
var firstRunner = "Dave"
var secondRunner = "Pat"

func swap<Value>(_ lhs: inout Value, _ rhs: inout Value) {
    let tempValue = lhs
    lhs = rhs
    rhs = tempValue
}

swap(&firstRunner, &secondRunner)
firstRunner
secondRunner

var trueProperty = true
var falseProperty = false

swap(&trueProperty, &falseProperty)
trueProperty
falseProperty

// <, >, ==, !=

//: ## Create a new `swap` operator
infix operator <=>

func <=> <T>(lhs: inout T, rhs: inout T) {
    let tempValue = lhs
    lhs = rhs
    rhs = tempValue
}

var speedLimit = 25
var yourSpeed = 55

speedLimit <=> yourSpeed
speedLimit
yourSpeed


//: [Next](@next)
