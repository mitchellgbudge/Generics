import UIKit

enum Arrow { case iron, wooden, elven, dwarvish, magic, silver }

struct CountedSet<Element: Hashable>: ExpressibleByArrayLiteral {
    
    init(arrayLiteral elements: Element...) {
        
        for element in elements {
            dictionary[element] = (dictionary[element] ?? 0) + 1
        }
    }
    
    subscript(_ member: Element) -> Int {
        return dictionary[member] ?? 0
    }
    
    mutating func remove(_ element: Element) {
        
        let count = dictionary[element] ?? 0
        
        if count > 0 {
            dictionary[element] = count - 1
        }
    }
    
    mutating func insert(_ element: Element) {
        dictionary[element] = (dictionary[element] ?? 0) + 1
    }
    
    var dictionary = [Element: Int]()
}


var aCountedSet = CountedSet<Arrow>()
aCountedSet[.iron] // 0
var myCountedSet: CountedSet<Arrow> = [.iron, .magic, .iron, .silver, .iron, .iron]
myCountedSet[.iron] // 4
myCountedSet.remove(.iron) // 3
myCountedSet.remove(.dwarvish) // 0
myCountedSet.remove(.magic) // 0

