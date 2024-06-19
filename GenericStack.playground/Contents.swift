import UIKit

/// A simple generic stack implementation using an array.
struct Stack<Element> {
    private var items: [Element] = []
    
    /// A computed property that returns 'true' if stack is empty or 'false' otherwise.
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    /// A computed property that returns number of element in the stack.
    var count: Int {
        items.count
    }
    
    /// A computed property that returns top of the stack in nil if stack is empty.
    var top: Element? {
        return items.last
    }
    
    /// Pushes element onto the top of the stack.
    /// - Parameter value: The element to push onto the top of the stack.
    mutating func push(_ value: Element) {
        items.append(value)
    }
    
    /// Pops an element from the  top of the stack.
    /// - Returns: The element from the top of the stack or 'nil' if the stack is emptu.
    mutating func pop() -> Element? {
        return items.popLast()
    }
    
    /// Removes all element from the stack.
    mutating func removeAll() {
        items.removeAll()
    }
}

var stk = Stack<Int>()

let arr = [5, 2, 6, 7, 8, 4, 10]

for i in arr {
    stk.push(i)
}

print("Stack : \(stk)")  // Stack : Stack<Int>(items: [5, 2, 6, 7, 8, 4, 10])

print(stk.count)    // 7

print(stk.pop())    // Optional(10)

print("Stack : \(stk)")     // Stack : Stack<Int>(items: [5, 2, 6, 7, 8, 4])

print(stk.top)  // Optional(4)

stk.removeAll()

print("Stack : \(stk)")     //Stack : Stack<Int>(items: [])
print(stk.pop())    // nil
print(stk.top)      // nil
