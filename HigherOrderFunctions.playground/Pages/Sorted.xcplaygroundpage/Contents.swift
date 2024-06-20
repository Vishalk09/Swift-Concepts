import Foundation

let arr =  [5, 3, 6, 2, 4, 8, 0, 10, 1]

print(arr.sorted(by: {val1, val2 in
    val1 < val2
}))

print(arr.sorted(by: {val1, val2 in
    val1 > val2
}))

print(arr.sorted(by: { $0 < $1 }))
print(arr.sorted(by: { $0 > $1 }))

print(arr.sorted(by: <))
print(arr.sorted(by: >))
