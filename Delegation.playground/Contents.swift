import UIKit

// Demonstrate use of delegate in swift.
enum Operation {
    case add, sub, mult, div
}

// Protocol requires any conforming type to implement didReceiveData(_:) 
protocol MyDelegate {
    func didReceiveData(_ result: Int)
}

// Class responsible for performing operations and sending result via delegate
class FirstClass {
    var delegate: MyDelegate?
//    Performs the given operation on two numbers and notifies delegate with the result
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
        // Notify the delegate with the computed result
        delegate?.didReceiveData(answer)
    }
}

// Class conforming to MyDelegate protocol
// Responsible for receiving and handling results from FirstClass
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


