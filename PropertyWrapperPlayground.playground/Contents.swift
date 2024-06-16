import Foundation
// Property wrapper defined here
@propertyWrapper
struct TwelveOrLess {
  private var number = 0
  var wrappedValue: Int {
    get { return number}
    set { number = min(newValue,12)}
  }
}

struct SmallRectangle{
  @TwelveOrLess var height: Int
  @TwelveOrLess var width: Int
}
/*
The _height and _width properties store an instance of the property wrapper, TwelveOrLess.
The getter and setter for height and width wrap access to the wrappedValue property.
*/
/*
struct SmallRectangle {
    private var _height = TwelveOrLess()
    private var _width = TwelveOrLess()
    var height: Int {
        get { return _height.wrappedValue }
        set { _height.wrappedValue = newValue }
    }
    var width: Int {
        get { return _width.wrappedValue }
        set { _width.wrappedValue = newValue }
    }
}
*/
var rectangle = SmallRectangle()
print(rectangle.height) // 0
rectangle.height = 10
print(rectangle.height) // 10
rectangle.height = 24
print(rectangle.height) // 12

class Number {
  @TwelveOrLess var num: Int
}

var newNum = Number()
print(newNum.num) // 0
newNum.num = 20
print(newNum.num)  // 12

@propertyWrapper
struct SmallNumber {
  private var maximum: Int
  private var number: Int
  var wrappedValue: Int {
    get { return number }
    set{  number = min(newValue, maximum) }
  }
  init() {
    maximum = 12
    number = 0
  }
  init(wrappedValue: Int) {
    maximum = 12
    number = min(wrappedValue, maximum)
  }
  init(wrappedValue: Int, maximum: Int) {
    self.maximum = maximum
    number = min(wrappedValue,maximum)
  }
}

struct ZeroRectangle {
  @SmallNumber var height: Int
  @SmallNumber var width: Int
}
var zeroRectangle = ZeroRectangle()
print(zeroRectangle.width, zeroRectangle.height) // 0 0
struct UnitRectangle {
  @SmallNumber var width: Int = 1
  @SmallNumber var height: Int = 1
}
var unitRectangle = UnitRectangle()
print(unitRectangle.width, unitRectangle.height) // 1 1

struct NarrowRectangle {
  @SmallNumber(wrappedValue: 2, maximum: 5) var width: Int
  @SmallNumber(wrappedValue: 2, maximum: 4) var height: Int
}
var narrowRectangle = NarrowRectangle()
print(narrowRectangle.width, narrowRectangle.height) // 2 2
narrowRectangle.width = 100
narrowRectangle.height = 90
print(narrowRectangle.width, narrowRectangle.height) // 5 4

struct MixedRectangle {
  @SmallNumber var width: Int = 1
  @SmallNumber(maximum: 9) var height: Int = 2
}
var mixedRectangle = MixedRectangle()
print(mixedRectangle.width, mixedRectangle.height) // 1 2
mixedRectangle.width = 20
mixedRectangle.height = 20
print(mixedRectangle.width, mixedRectangle.height) // 12 9


// Projecting value from property wrapper
/*@propertyWrapper
struct SmallNumber {
  private var number: Int
  private(set) var projectedValue: Bool
  var wrappedValue: Int {
    get { return number }
    set{
      if newValue > 12 {
        number = 12
        projectedValue = true
      } else {
        number = newValue
        projectedValue = false
      }
    }
  }
  init() {
    self.number = 0
    self.projectedValue = false
  }
}

struct SomeStructure {
  @SmallNumber var someNumber: Int
}
var someStructure = SomeStructure()
someStructure.number = 4
print(someStructure.$someNumber)
someStructure.number = 20
print(someStructure.$someNumber)*/

