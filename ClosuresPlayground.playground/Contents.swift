import Foundation

// Closures

var myFunction: ((Int) -> (Bool)) = { number in
    if number > 3 {
        return true
    }
    return false

}
print(myFunction(4))

func isGreaterThanThree(number: Int) -> Bool {
    if number > 3 {
        return true
    }
    return false
}
print(isGreaterThanThree(number: 2))

// Below is sorted(by:) function where by parameter takes closure of type (String, String) -> Bool
// Global and nested functions is special cases of closure.

let names = ["Alex", "Smith", "Harry", "Joe", "Henry"]

func backward(_ s1: String, _ s2: String) -> Bool {
  return s1>s2
}
print(names.sorted(by: backward)) // ["Smith", "Joe", "Henry", "Harry",  "Alex"]

var reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})
print(reversedNames) // ["Smith", "Joe", "Henry", "Harry",  "Alex"]

// MARK: Shorthand versions
print(names.sorted(by: {s1,s2 in return s1>s2}))
print(names.sorted(by: {s1,s2 in s1>s2}))
print(names.sorted(by: {$0>$1}))
// Swift has string specific implementation of > operator so we can write > only swift directly infers it.
print(names.sorted(by: >))

// Trailing0 closures
reversedNames = names.sorted() {$0 > $1}
reversedNames = names.sorted {$0 > $1}

// MARK: Capturing values through closure
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
  var runningTotal = 0
  func incrementer() -> Int {
    runningTotal += amount
    return runningTotal
  }
  return incrementer
}
let incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen()) // 10
print(incrementByTen()) // 20
let incrementByFive = makeIncrementer(forIncrement: 5)
print(incrementByFive()) // 5
print(incrementByTen()) // 30
// Closures are referenced types that's why separate copy is maintained
