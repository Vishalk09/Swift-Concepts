import Foundation

let strArray = ["A", "12", "One", "1", "four", "4", "2.0"]

// All values returned after operation.
print(strArray.map{ Int($0) })  // [nil, Optional(12), nil, Optional(1), nil, Optional(4), nil]

// nil values removed.
let outputArray = strArray.compactMap({ item in
    return Int(item)
})
print(outputArray)  // [12, 1, 4]

print(strArray.compactMap({ Int($0)}))
