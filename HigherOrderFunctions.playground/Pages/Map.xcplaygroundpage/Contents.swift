import Foundation

// 1. Normal
let mapRes = numArr.map({num in
    return num * 2
})
print(mapRes)   // [2, 4, 6, 8, 10]

// 2. Shorthand
let mapResult = numArr.map{ $0 * 2}
print(mapResult)    // [2, 4, 6, 8, 10]
