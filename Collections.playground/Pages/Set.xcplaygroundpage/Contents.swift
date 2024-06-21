import UIKit


// ----------------------- Set --------------------- //

// Empty set creation
var letters = Set<Character>()

//Assigning value
letters = ["a", "b", "c"]
print(letters)

// Set type can npt be inferred need to declare

var numSet: Set = [2]
numSet = [2,3,5,2,5,4,34,32,43,34,43]
print(numSet)

// Set methods/properties
print(numSet.count) // 11
numSet.insert(6) // inserted 6 at random
print(numSet)
numSet.remove(34) // 34 is removed
print(numSet)
print(numSet.contains(32)) // true
print(numSet.sorted()) // sorted in increasing order

// Set operations
let odd: Set = [1,3,5,7,9]
let even: Set = [2,4,6,8]
let prime: Set = [2,3,5,7]

print(odd.union(even).sorted())
print(odd.intersection(prime))
print(odd.subtracting(prime).sorted())
print(odd.symmetricDifference(prime).sorted())

// Set membership and equality
// isSubset(of:) isSuperset(of:)  isStrictSubset(of:) isDisjoint(with:)

let sub: Set = [2,4]
let equal: Set = [2,4,6,8]
print(sub.isSubset(of: even)) // true
print(equal.isStrictSubset(of:sub)) // true
print(equal.isStrictSubset(of:equal)) // false
print(even.isSuperset(of:odd)) // true
print(odd.isDisjoint(with: even)) // true
