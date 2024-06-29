import UIKit

// MARK: Functions and Parameters

func addTwoNums(a: Int, b: Int) -> Int {
    return a + b
}

func squareNumber(num: Int) -> Int {
    return num * num
}

func isEven(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }
    return false
}

print(addTwoNums(a: 3, b: 5)) // 8
var x = 5
var y = 20

print(squareNumber(num: x)) // 25
print(isEven(number: x)) // false
print(isEven(number: y)) // true

// MARK: Function types
// Above addTwoNums is of type (Int, Int) -> Int
// can create variables also.
var mathFunction: (Int, Int) -> Int = addTwoNums
print(mathFunction(3,4))  // 7

// MARK: Default parameter value
func someFunction(first: Int, second: Int = 12) {
    print("Param 1: \(first), Param 2: \(second)")
}
someFunction(first: 5, second: 6)  // Param 1: 5, Param 2: 6
someFunction(first: 5) // Param 1: 5, Param 2: 12

// For print there is parameter named terminator which has default value \n
// We can change that value so instead new line string provide will get printed
print("Terminator value change demo", terminator: "-------")
// Terminator value change demo-------


// MARK: Variadic parameters
func arithmeticMean(_ numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  if numbers.count == 0 {
    return 0
  }
  return sum/numbers.count
}
print(arithmeticMean(1,2,3,6)) // 3

// MARK: Inout parameters
func swapTwoInts(_ a: inout Int,_ b: inout Int) {
  let temp = a
  a = b
  b = temp
}
var num1 = 3, num2 = 5
swapTwoInts(&num1,&num2)
print(num1, num2) // 5,3

//MARK: Function type as return type

func stepForward(_ num: Int) -> Int {
    return num+1
}
func stepBackward(_ num: Int) -> Int {
    return num-1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
var  currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: (currentValue > 0))
while currentValue != 0 {
    currentValue = moveNearerToZero(currentValue)
}
print(currentValue)

// MARK: Nested functions
/*
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(_ num: Int) -> Int {
        return num+1
    }
    func stepBackward(_ num: Int) -> Int {
        return num-1
    }
    return backward?stepBackward:stepForward
}*/

