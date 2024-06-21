import Foundation

// -------------- Arrays ----------------- //

// Empty array
var names: [String] = []

names = ["Joe", "John", "Jack"]

// Any type of array
var val: [Any] = [1, "Two", 3, 4]
// print(val)

// Creating array of same values
var threeDoubles = Array(repeating: 1.0, count: 3)
print(threeDoubles)

// can directly add array using + operator
names = names + ["Henry", "Smith"]
print(names)

// Count
print(names.count) // 5
print(names.isEmpty) // false
names.append("Will")
print(names)  // ["Joe", "John", "Jack", "Henry", "Smith", "Will"]
// We can access and change using index similar to other languages

// Changing range of values
names[3...5] = ["Kane"]
print(names) // ["Joe", "John", "Jack", "Kane"]
names.insert("Will",at: 2)
names.remove(at: 0)
names.removeLast()
print(names)

// Enumerated( returns tuple with index and value)
for (index,value) in names.enumerated() {
  print("Item at \(index) is \(value)")
}
