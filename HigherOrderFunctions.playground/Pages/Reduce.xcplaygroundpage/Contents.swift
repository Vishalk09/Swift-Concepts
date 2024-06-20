import Foundation

var numArr = [1, 2, 3, 4, 5]
var totalSum = numArr.reduce(0, { runningSum, num in
    runningSum + num
})
print(totalSum) // 15

totalSum = 0
totalSum = numArr.reduce(0, {$0 + $1})
print(totalSum)

// Shorthand
totalSum = 0
totalSum = numArr.reduce(0, +)
print(totalSum) // 15
// Similarly can use for concatenating string array.
