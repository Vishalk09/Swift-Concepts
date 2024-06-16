import Foundation

//-------------------Properties--------------------//

// ** Stored properties ** //
struct FixedLengthRange {
    var firstValue: Int // Variable stored property
    let length: Int // constant stored property
}

let obj = FixedLengthRange(firstValue: 2, length: 4)
print(obj.length)

// Lazy stored property
class DataImporter {
    var fileName = "data.txt"
    init() {
        print("Instance is created")
    }
}

class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
}
let manager = DataManager()
manager.data.append("Some data")
print(manager.data)
print(manager.importer.fileName) // Importer instance will be created here
// if not declared lazy it would have allocated memory when manager instance was created.


// ** Computed properties ** //

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point(), size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
        // Shorthand getter and setter
        /*
        get {
            Point(x: origin.x + (size.width/2), y: origin.y + (size.height/2))
        }
        set {
            origin.x = newValue.x - (size.width/2)
            origin.y = newValue.y - (size.height/2)
        }
        */
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width:10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x:15.0, y:15.0)
print("New square origin at (\(square.origin.x), \(square.origin.y))")

//-- Read only computed properties--

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width*height*depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print(fourByFiveByTwo.volume) // 40.0


// ** Property observers

// willSet, Didset
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set total steps to: \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue {
                print("Added \(totalSteps-oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set total steps to: 200
// Added 200 steps
stepCounter.totalSteps = 320
// About to set total steps to: 320
// Added 120 steps
stepCounter.totalSteps = 400
// About to set total steps to: 400
// Added 80 steps

// ** Property wrappers

// Note: See propertyWrapper.swift file.


// ** Type properties

struct SomeStructure {
    static var storedTypeProperty = "SomeValue"
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnum {
    static var storedTypeProperty = "SomeValue"
    static var computedTypeProperty: Int {
        return 6
    }
}

class SomeClass {
    static var storedTypeProperty = "SomeValue"
    static var computedTypeProperty: Int {
        return 27
    }
    class var overridableComputedTypeProperty: Int {
        return 107
    }
}

print(SomeEnum.storedTypeProperty)

