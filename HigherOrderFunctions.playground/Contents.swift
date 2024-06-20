import UIKit

let numArr = [1, 2, 3, 4, 5]


// ***** filter *****
let oddNums = numArr.filter({ num in
    return num%2 != 0
})
print(oddNums)  // [1, 3, 5]

// ***** reduce *****
var totalSum = numArr.reduce(0, { runningSum, num in
    runningSum + num
})
print(totalSum) // 15

// Shorthand
totalSum = 0
totalSum = numArr.reduce(0, +)
print(totalSum) // 15
// Similarly can use for concatenating string array.

// ***** map *****
// 1. Normal
let mapRes = numArr.map({num in
    return num * 2
})
print(mapRes)   // [2, 4, 6, 8, 10]

// 2. Shorthand
let mapResult = numArr.map{ $0 * 2}
print(mapResult)    // [2, 4, 6, 8, 10]

// ***** compactMap *****
// After performing operation if value is nil it is removed and non nil array returned.

let strArray = ["A", "12", "One", "1", "four", "4", "2.0"]

// All values returned after operation.
print(strArray.map{ Int($0) })  // [nil, Optional(12), nil, Optional(1), nil, Optional(4), nil]

// nil values removed.
let outputArray = strArray.compactMap({ item in
    return Int(item)
})
print(outputArray)  // [12, 1, 4]


// ***** flatMap *****

let twoDArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

let flattenedArray = twoDArray.flatMap{$0}
print(flattenedArray)   // [1, 2, 3, 4, 5, 6, 7, 8, 9]


