import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var counter = 1

DispatchQueue.main.async {
    for i in 0...3 {
        counter = i
        print(counter)
    }
}

for i in 4...6 {
    counter = i
    print(counter)
}

DispatchQueue.main.async {
    counter = 9
    print(counter)
}

/*
 Output:
 4
 5
 6
 0
 1
 2
 3
 9
 
 Reason:
 main is a serial queue. When we submit block to execute asynchronously on main queue. It will wait for current task to be completed. After completion of current task. Task submitter to queue asynchronously will execute in First-In-First-Out (FIFO) manner.
 */
