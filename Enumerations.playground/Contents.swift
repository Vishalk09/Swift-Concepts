import UIKit

enum CompassPoint {
    case north, south, east, west
}

enum Planets {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

func printDirection(_ direction: CompassPoint) {
    switch direction {
        case .east:
            print("East")
        case .west:
            print("West")
        case .north:
            print("North")
        case .south:
            print("South")
    }
}

// var directionToHead = CompassPoint.north
var directionToHead: CompassPoint = .north
print(directionToHead) // north
printDirection(directionToHead) // North

// For iterating over enum cases
// Write : CaseIterable

enum Beverage: CaseIterable {
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count
print(numberOfChoices)

for beverage in Beverage.allCases {
    print(beverage)
}
/* coffee
tea
juice*/


//*** Associated Values ***//

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

// Can extract associated value as part of switch statement
switch productBarcode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
        print("number sytem: \(numberSystem), Manufacturer: \(manufacturer), Product: \(product), Check: \(check)")
    case .qrCode(let productCode):
        print("Product code: \(productCode)")
}

//*** Raw Values ***//
enum ASCIIControlCharacter:  Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}


print("Rawvalue: \(ASCIIControlCharacter.tab.rawValue)")
print("Neptune is at: \(Planet.neptune.rawValue)")
print("Planet at 5: \(Planet(rawValue: 5)!)")  // jupiter  (returns an optional value)

// Recursive enums...

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)  // by writing indirect we indicate that case in recursive
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

/*
indirect enum ArithmeticExpression {  // automatically enable indirection for cases with associated values
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}
*/

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five,four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
        case let .number(value):
            return value
        case let .addition(left, right):
            return evaluate(left) + evaluate(right)
        case let .multiplication(left, right):
            return evaluate(left) * evaluate(right)
    }
}

print(evaluate(sum))    // 9
print(evaluate(product))   // 18

