import Foundation

// Loops

//*** for in loop

let names = ["Joe", "John", "Jack", "Henry", "Smith", "Will"]
for name in names {
    print("Hello \(name)!")
}

// Iterate over dict
let numberOfLegs = ["Ant":6, "Cat":4, "Spider":8]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName): \(legCount)")
}
// Ant: 6
// Cat: 4
// Spider: 8

// Iterate over a range
for index in 1...5 {
    print(index, terminator: " ") // 1 2 3 4 5
}

// If don't need to use value can neglect by placing _
let base  = 2, power = 10
var answer = 1
for  _ in 1...power {
    answer *= base
}
print(answer) // 1024

// USe of stride
let minuteInterval = 5
for tickMark in stride(from: 0, to: 60, by: minuteInterval) {
    print(tickMark)   // 0 5 10 ... 55
}

for tickMark in stride(from: 0, through: 60, by: minuteInterval) {
    print(tickMark) // 0 5 10 ... 60
}

// Note: We can iterate over any collection/class created by us by implementing Sequence protocol.

//** While loops
var num = 0
while num != 2 {
    num += 1
}
print(num)

repeat {
    num += 2
} while num != 10

print(num)

// *** Conditional statements

if num % 2 == 0 {
    print("even")
} else {
    print("odd")
}
// can use else if as well

// *** switch case

// will add complex switch case here only

// switch case must provided case for each possible value for the type
// if not then should add default case

var char = "A"

switch char {
    case "a", "A", "e", "E", "i", "I", "o", "O", "u", "U": // Combining case
        print("Vowel")
    case "b"..."z", "B"..."Z":  // Adding range case
        print("Consonant")
    default:    // Default case
        print("Other char")
}

// tuple is switch case
let somePoint = (1,1)
switch somePoint {
    case (0, 0):
        print("On origin")
    case (_, 0):
        print("On x-axis")
    case (0, _):
        print("On y-axis")
    case (-2...2, -2...2):
        print("Inside box of w:4, h:4 at origin : 0,0")
    default:
        print("Outside of the box")
}

// Value binding
// switch case can name value/values to use in that case
switch somePoint {
    case (0, 0):
        print("On origin")
    case (let x, 0):
        print("On x-axis at \(x) distance")
    case (0, let y):
        print("On y-axis at \(y) distance")
    case let (x,y):
        print("Point at x: \(x), y: \(y)")
}

// using where clause
switch somePoint {
    case let (x, y) where x == y:
        print("Point x: \(x), y: \(y) is on line x == y")
    case let (x, y) where x == -y:
        print("Point x: \(x), y: \(y) is on line x == -y")
    case let (x, y):
        print("Point x: \(x), y: \(y) is arbitrary point")
}

/*
control transfer statements:
continue: start to beginning of next iteration
break: move out of control flow
fallthrough: To fall to next case (doesn't check next case condition)

labeled statements: Can provide label to loop
<label name>: while <condition> {
    // statements
}
Can use in continue or break statemnets to specify exact control flow for which to execute statemnet
like continue <label name>

Early exit: guard let


Checking API availability

*/
