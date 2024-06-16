import UIKit

// Demonstrate use of delegate in swift.
enum Operation {
    case add, sub, mult, div
}

protocol MyDelegate {
    func didReceiveData(_ result: Int)
}

class FirstClass {
    var delegate: MyDelegate?
    func sendData(_ value1: Int, _ value2: Int, operation: Operation) {
        var answer = 0
        switch operation {
            case .add:
                answer = value1 + value2
            case .sub:
                answer = value1 - value2
            case .mult:
                answer = value1 * value2
            case .div:
                answer = value1 / value2
        }
        delegate?.didReceiveData(answer)
    }
}

class SecondClass: MyDelegate {
    let obj = FirstClass()
    
    init() {
        obj.delegate = self
        obj.sendData(2,3,operation: .mult)
    }
    
    func didReceiveData(_ result: Int) {
        print("Received Data: \(result)")
    }
}

let obj = SecondClass()


