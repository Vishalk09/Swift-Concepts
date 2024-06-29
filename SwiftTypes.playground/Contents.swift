import UIKit

// Variables & Constants

var n: Int = 2
n = 3

let const_n: Int = 2
//const_n = 6  // cannot assign to value: 'const_n' is a 'let' constant.

// Int, String, Double, Float, Bool, ...

var num: Int = 2
var name: String = "VK"
var price: Double = 1.992
var height: Float = 1.735425
var flag: Bool = true

// If do not specify type when we creating and assigning variable/constant in single line it can infer the type.

var city = "Delhi"
print(type(of: city))  // type(of:) used for getting type of var/const

// decimal, binary, octal, hex num

let dec = 10
let binary = 0b1001
let octal = 0o34
let hex = 0xA1

print("Decimal: \(dec)")
print("Binary: \(binary)")
print("Octal: \(octal)")
print("hex: \(hex)")

// Can create custom types using class, struct or enum.
// function or block of code also passed in the form of variables will be discused later.
