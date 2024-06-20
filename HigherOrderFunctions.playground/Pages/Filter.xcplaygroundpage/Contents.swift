import Foundation

let numArr = [1, 2, 3, 4, 5]

let oddNums = numArr.filter({ num in
    return num%2 != 0
})
print(oddNums)  // [1, 3, 5]

print(numArr.filter{ $0%2 != 0 })
