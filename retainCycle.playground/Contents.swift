import UIKit

class Person {
  let name: String
  var macBook: MacBook?
  init(name: String, macBook: MacBook?) {
    self.name = name
    self.macBook = macBook
  }
  deinit {
    print("Person is deinitialized")
  }
}

class MacBook {
  let name: String
  var owner: Person? // can either this or MacBook var in Parson class weak
  init(name: String, owner: Person?) {
    self.name = name
    self.owner = owner
  }
  deinit {
    print("MacBook is deinitialized")
  }
}

var john: Person?
var mac: MacBook?

func createObjects() {
  john = Person(name: "John", macBook: nil)
  mac = MacBook(name: "Sierra", owner: nil)
}

func initializeObjects() {
  john?.macBook = mac
  mac?.owner = john
}

createObjects()
// john = nil
// mac = nil
// createObjects()
initializeObjects()
john = nil // did not call deinit
mac = nil // did not call deinit

