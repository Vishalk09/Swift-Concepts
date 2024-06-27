import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let a: DispatchQueue = DispatchQueue(label: "A")
let b: DispatchQueue = DispatchQueue(label: "B", attributes: .concurrent, target: a)

a.async {
    for i in 0...5 {
        print(i)
    }
}

a.async {
    for i in 6...10 {
        print(i)
    }
}

b.async {
    for i in 11...15 {
        print(i)
    }
}

b.async {
    for i in 16...20 {
        print(i)
    }
}

