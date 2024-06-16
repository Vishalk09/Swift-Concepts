import Foundation

let num: Any = 2
let dec: Any = 1.0
let doubDec: Any = 1.354
let text: Any = "SomeText"
let tup: Any = (12, "Int")
let arr: [Any] = ["as", "asdf", "asedd"]

class Employee {
    var employeeName: String = "Vishal"
}

struct Product {
    
}
let objClass: AnyObject = Employee()
let objStruct: Any = Product()

print(num)
print(dec)
print(doubDec)
print(text)
print(tup)
print(arr)
print(objClass)
print(objStruct)
// Issue with Any
var answer: Any = 10
answer = "hjsdf"
print(answer)


// Issue with AnyObject
let objClass1: AnyObject = Employee()
// print(objClass.employeeName)  // error: value of type 'AnyObject' has no member 'employeeName'

if let result = objClass as? Employee {
    print(result.employeeName)
}
