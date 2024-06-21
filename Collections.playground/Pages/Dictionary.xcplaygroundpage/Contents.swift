import Foundation

// ------------------------------Dictionary--------------------------- //

var cars: [Int : String] = [3:"bmw", 5:"honda"]
var nameOfInts = [1:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five"]

print(cars)

// ** Dictionary methods/properties **

// count: Property to get number of key-value pairs in dictionary.
print("Number of Key-Value pairs: \(cars.count)") // 2
//isEmpty: Property to check whether dictionary is empty or not.
print("Is dictionary empty-> \(cars.isEmpty)") //false
// Use of subscript to access value for key in subscript (returns an optional value).
print("Value for 3 is \(nameOfInts[3])") // Optional("Three")

// To update value can use updateValue(_:forKey:) it returns old value as optional.
if let oldValue = cars.updateValue("fortuner", forKey:3) {
  print("Old value for key 3: \(oldValue), New Value is : \(cars[3])") // bmw
}

// Can remove by setting value for key as nil
nameOfInts[5] = nil

// Iterating through a dictionary. We get tuple of key-value pair.
for (num, word) in nameOfInts {
  print("Key: \(num), Value: \(word)")
}

// Can get array instance of key and values separately.
let nums = [Int](nameOfInts.keys)
let names = [String](nameOfInts.values)

print("Nums(Key) Array: \(nums)")
print("Names(Value) Array: \(names)")
