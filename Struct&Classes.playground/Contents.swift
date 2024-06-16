import UIKit

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = true
    var framerate = 0.0
    var name: String?
}

let someResolution =  Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)  // 0
print(someVideoMode.resolution.width) // 0

// Struct have default memberwise initializer
let vga = Resolution(width: 640, height: 480)
print(vga.width, vga.height) // 640 480

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("HD value: \(hd.width), Cinema value: \(cinema.width)") // 1920 2048
// No change in hd as struct are value type

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.framerate = 25.0
print(tenEighty.framerate) // 25.0

var anotherTenEighty = tenEighty
anotherTenEighty.framerate = 30.0

print("Original: \(tenEighty.framerate), Assigned to: \(anotherTenEighty.framerate)") // 30.0 30.0
// Classes are reference type so change will be in both instances

// identity operator (=== / !==) to check if two constant/variables pointing to same reference
if tenEighty === anotherTenEighty {
    print(true)
}

